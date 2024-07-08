return {
  {
    'romgrk/barbar.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('barbar').setup {

        -- Enable/disable animations
        animation = true,

        -- Enable/disable auto-hiding the tab bar when there is a single buffer
        auto_hide = false,

        icons = {
          -- Configure the base icons on the bufferline.
          buffer_index = true,
          buffer_number = false,
          filetype = {
            enabled = false,
          },
        },
      }
    end,
  },
}