return {
  { "catppuccin/nvim",               name = "catppuccin",          lazy = false },
  { "folke/tokyonight.nvim",         opts = { transparent = true } },
  { "challenger-deep-theme/vim",     name = "challenger-deep",     lazy = false },
  { "drewtempelmeyer/palenight.vim", name = "palenight",           lazy = false },
  { "FrenzyExists/aquarium-vim",     name = "aquarium",            lazy = false },
  { "Shadorain/shadotheme",          name = "shadotheme",          lazy = false },
  { "audibleblink/hackthebox.vim",   name = "hackthebox",          lazy = false },
  { "rmehri01/onenord.nvim",         name = "onenord",             lazy = false },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { "comfysage/evergarden",          name = "evergarden",      lazy = false },
  { "EdenEast/nightfox.nvim",        name = "nightfox",        lazy = false },
  { "mellow-theme/mellow.nvim",      name = "mellow",          lazy = false },
  { "shaunsingh/nord.nvim",          name = "nord",            lazy = false },
  { "cocopon/iceberg.vim",           name = "iceberg",         lazy = false },
  { "sainnhe/everforest",            name = "everforest",      lazy = false },
  { "LunarVim/horizon.nvim",         name = "horizon",         lazy = false },
  { "AlessandroYorba/Despacio",      name = "despacio",        lazy = false },
  { "AhmedAbdulrahman/aylin.vim",    name = "aylin",           lazy = false },
  { "ntk148v/vim-horizon",           name = "vim-horizon",     lazy = false },
  { "flrnd/candid.vim",              name = "candid",          lazy = false },
  { "lighthaus-theme/vim-lighthaus", name = "vim-lighthaus",   lazy = false },
  { "gregsexton/Muon",               name = "Muon",            lazy = false },
  { "cseelus/vim-colors-tone",       name = "vim-colors-tone", lazy = false },
  { "beikome/cosme.vim",             name = "cosme",           lazy = false },
  {
    "comfysage/aurora",
    name = "aurora",
    lazy = false,
    priority = 1000,
    opts = { transparent_background = true },
  },
  { "miffi/apropospriate.nvim",         name = "apropospriate", lazy = false },
  { "olivercederborg/poimandres.nvim",  name = "poimandres",    lazy = false },
  { "colevoss/nvimpire",                name = "nvimpire",      lazy = false },
  { "joshdick/onedark.vim",             name = "onedark",       lazy = false },
  { "rakr/vim-one",                     name = "one",           lazy = false },
  { "sonph/onehalf",                    name = "onehalf",       lazy = false },
  { "nyoom-engineering/oxocarbon.nvim", name = "oxocarbon",     lazy = false },
  { "lifepillar/vim-solarized8",        name = "solarized8",    lazy = false },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true,
          migrations = true,
        },

        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
        groups = {},
        highlight_groups = {
          TelescopeBorder = { fg = "highlight_high", bg = "none" },
          TelescopeNormal = { bg = "none" },
          TelescopePromptNormal = { bg = "base" },
          TelescopeResultsNormal = { fg = "subtle", bg = "none" },
          TelescopeSelection = { fg = "text", bg = "base" },
          TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
        },

        before_highlight = function(group, highlight, palette) end,
      })
      vim.cmd("colorscheme rose-pine")
    end,
  },
  { "ayu-theme/ayu-vim",          name = "ayu",       lazy = false },
  { "Mofiqul/dracula.nvim",       name = "dracula",   lazy = false },
  { "embark-theme/vim",           name = "embark",    lazy = false },
  { "oxfist/night-owl.nvim",      name = "night-owl", lazy = false },
  { "niyabits/calvera-dark.nvim", name = "calvera",   lazy = false },
  {
    "scottmckendry/cyberdream.nvim",
    name = "cyberdream",
    lazy = false,
    opts = { transparent_background = true },
    priority = 1000,
  },
  { "projekt0n/github-nvim-theme", name = "github",         lazy = false },
  {
    "Yazeed1s/oh-lucy.nvim",
    name = "oh-lucy",
    lazy = false,
  },
  { "maxmx03/dracula.nvim",        name = "dracula",        lazy = false },
  { "hardhackerlabs/theme-vim",    name = "hardhackerlabs", lazy = false },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    opts = {
      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },

          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
    },
  },
  {
    "xiyaowong/transparent.nvim",
  },
}
