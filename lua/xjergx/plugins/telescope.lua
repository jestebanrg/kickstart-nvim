-- ~/.config/nvim/lua/xjergx/plugins/telescope.lua
-- require("telescope").load_extension("fzf")
-- require("telescope").load_extension("lazygit")
-- require("telescope").load_extension("noice")
return {
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make', -- Esto asegura que se ejecute `make` para compilar el plugin
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
      'nvim-lua/plenary.nvim',
      --lazygit
      'kdheepak/lazygit.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
      'nvim-telescope/telescope-file-browser.nvim',
      {
        'isak102/telescope-git-file-history.nvim',
        dependencies = { 'tpope/vim-fugitive' },
      },
    },
    config = function()
      local gfh_actions = require('telescope').extensions.git_file_history.actions
      require('telescope').setup {
        defaults = {
          prompt_prefix = '🔍 ',
          layout_strategy = 'horizontal',
          layout_config = {
            horizontal = {
              prompt_position = 'top',
              preview_width = 0.55,
              results_width = 0.8,
            },
            vertical = {
              mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
          },
        },
        pickers = {
          find_files = {
            prompt_prefix = '🔍 ',
            --[[   borderchars = { '', '', '', '', '', '', '', '' }, ]]
            -- theme = "ivy",
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
          },
          file_browser = {
            theme = 'ivy',
          },
          git_file_history = {
            -- Keymaps inside the picker
            mappings = {
              i = {
                ['<C-g>h'] = gfh_actions.open_in_browser,
              },
              n = {
                ['<C-g>h'] = gfh_actions.open_in_browser,
              },
            },
            browser_command = nil,
          },
        },
      }
      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })
      vim.keymap.set('n', '<leader>fm', builtin.marks, { desc = 'Marks' })
      vim.keymap.set('n', '<leader>fr', builtin.registers, { desc = 'Registers' })
      vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Keymaps' })
      vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Old files' })
      vim.keymap.set('n', '<leader>f/', builtin.grep_string, { desc = 'Grep string' })
      vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Diagnostics' })
      -- vim.keymap.set('n', '<leader>fi', '')

      vim.keymap.set('n', '<leader>/', function()
        require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, { desc = 'Fuzzy find in current buffer' })

      vim.keymap.set('n', '<leader>fs', function()
        require('telescope').extensions.file_browser.file_browser {
          path = '%:p:h',
          cwd = vim.fn.expand '%:p:h',
          respect_gitignore = false,
          hidden = true,
          grouped = true,
          previewer = true,
          initial_mode = 'normal',
          layout_config = { height = 40 },
        }
      end, { desc = 'File browser' })

      -- require("telescope").load_extension("fzf")
      require('telescope').load_extension 'file_browser'
      require('telescope').load_extension 'nerdy'
      require('telescope').load_extension 'git_file_history'
    end,
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require('telescope').setup {
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown {},
          },
        },
      }
      require('telescope').load_extension 'ui-select'
    end,
  },
}
