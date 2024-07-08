return {
  {
    'yutkat/confirm-quit.nvim',
    event = 'CmdlineEnter',
    opts = {},
  },

  {
    'malbertzard/inline-fold.nvim',

    opts = {
      defaultPlaceholder = '…',
      queries = {

        -- Some examples you can use
        html = {
          { pattern = 'class="([^"]*)"', placeholder = '@' }, -- classes in html
          { pattern = 'href="(.-)"' }, -- hrefs in html
          { pattern = 'src="(.-)"' }, -- HTML img src attribute
        },
      },
    },
  },

  {
    '2kabhishek/nerdy.nvim',
    dependencies = {
      'stevearc/dressing.nvim',
      'nvim-telescope/telescope.nvim',
    },
    cmd = 'Nerdy',
  },

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      -- local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      -- statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      -- statusline.section_location = function()
      --   return '%2l:%-2v'
      -- end

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },

  { 'echasnovski/mini.icons', version = false },
  -- {
  --   'petertriho/nvim-scrollbar',
  --   config = function()
  --     require('scrollbar').setup()
  --     require('scrollbar.handlers.search').setup()
  --   end
  -- },
  --
  {
    'roobert/surround-ui.nvim',
    dependencies = {
      'kylechui/nvim-surround',
      'folke/which-key.nvim',
    },
    config = function()
      require('surround-ui').setup {
        root_key = 'S',
      }
    end,
  },

  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = { --[[ things you want to change go here]]
    },
  },
  {
    'jose-elias-alvarez/typescript.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'ayu_mirage',
        },
        -- options = {
        --   theme = 'horizon',
        --   component_separators = '',
        --   section_separators = { left = '', right = '' },
        -- },
        sections = {
          lualine_a = { { 'mode', right_padding = 2 } },
          lualine_b = { 'filename', 'branch' },
          lualine_c = {
            '%=', --[[ add your center compoentnts here in place of this comment ]]
          },
          lualine_x = {},
          lualine_y = { 'filetype', 'progress' },
          lualine_z = {
            { 'location', left_padding = 2 },
          },
        },
        inactive_sections = {
          lualine_a = { 'filename' },
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = { 'filetype' },
          lualine_z = { 'location' },
        },
        tabline = {},
        extensions = {},
      }
    end,
  },
}
