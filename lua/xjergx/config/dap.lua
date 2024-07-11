local dap = require 'dap'

-- Configuración de DAP para .NET
dap.adapters.coreclr = {
  type = 'executable',
  command = '/home/juan/netcoredbg/netcoredbg',
  args = { '--interpreter=vscode' },
}

dap.configurations.cs = {
  {
    type = 'coreclr',
    name = 'Launch - netcoredbg',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/net6.0/', 'file')
    end,
  },
}
