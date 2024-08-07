return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      enable_git_status = true,
      enable_diagnostics = true,
      source_selector = {
        winbar = true,
        statusline = true,
      },
      filesystem = {
        filtered_items = {
          visible = true, -- Muestra archivos ocultos
          hide_dotfiles = false, -- No ocultar archivos que comienzan con un punto (.)
          hide_gitignored = false, -- No ocultar archivos ignorados por git
        },
        -- Otras configuraciones que desees
      },
    }
  end,
}

-- return {
--   'nvim-tree/nvim-tree.lua',
--   dependencies = {
--     'nvim-tree/nvim-web-devicons',
--   },
--   config = function()
--     require('nvim-tree').setup {
--       sort = {
--         sorter = 'case_sensitive',
--       },
--       view = {
--         width = 30,
--       },
--       renderer = {
--         group_empty = true,
--       },
--       filters = {
--         dotfiles = true,
--       },
--     }
--   end,
-- }
