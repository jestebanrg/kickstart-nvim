return {
  {
    'rcarriga/nvim-dap-ui',
    dependencies = {
      'mfussenegger/nvim-dap',
      'nvim-neotest/nvim-nio',
      -- 'theHamsta/nvim-dap-virtual-text',
    },
  },

  {
    'mfussenegger/nvim-dap',
    documents = {
      'rcarriga/nvim-dap-ui',
      { 'theHamsta/nvim-dap-virtual-text' },
    },
    config = function()
      local dap = require 'dap'
      local dapui = require 'dapui'

      dapui.setup {
        layouts = {
          {
            elements = {
              'scopes',
              'breakpoints',
              'watches',
            },
            size = 40,
            position = 'left',
          },
          {
            elements = {
              'repl',
              'console',
            },
            size = 0.25, -- 25% of total lines
            position = 'bottom',
          },
        },
      }

      dap.adapters.coreclr = {
        type = 'executable',
        command = '/home/juan/netcoredbg/netcoredbg',
        args = { '--interpreter=vscode' },
        env = { ASPNETCORE_ENVIRONMENT = 'Development', DOTNET_ENVIRONMENT = 'Development' },
      }

      dap.configurations.cs = {
        {
          type = 'coreclr',
          name = 'launch - netcoredbg',
          request = 'launch',
          program = function()
            return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
          end,
          env = {
            ASPNETCORE_ENVIRONMENT = 'Development',
            DOTNET_ENVIRONMENT = 'Development',
          },
        },
      }
      --simbols for debugger
      vim.fn.sign_define('DapBreakpoint', { text = '🛑', texthl = 'DapBreakpoint', linehl = '', numhl = '' })

      -- Configurar teclas para depuración y dap-ui
      vim.api.nvim_set_keymap('n', '<F5>', '<cmd>lua require"dap".continue()<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<F10>', '<cmd>lua require"dap".step_over()<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<F11>', '<cmd>lua require"dap".step_into()<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<F12>', '<cmd>lua require"dap".step_out()<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>b', '<cmd>lua require"dap".toggle_breakpoint()<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap(
        'n',
        '<leader>B',
        '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>',
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap('n', '<leader>dr', '<cmd>lua require"dap".repl.open()<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>dl', '<cmd>lua require"dap".run_last()<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>du', '<cmd>lua require"dapui".toggle()<CR>', { noremap = true, silent = true })

      -- Abrir dap-ui automáticamente cuando inicie la depuración
      dap.listeners.after.event_initialized['dapui_config'] = function()
        dapui.open()
      end

      -- Cerrar dap-ui automáticamente cuando termine la depuración
      dap.listeners.before.event_terminated['dapui_config'] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited['dapui_config'] = function()
        dapui.close()
      end
    end,
  },
}
