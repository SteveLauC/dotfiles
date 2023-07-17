local custom_ayu = require('lualine.themes.ayu')
custom_ayu.normal.a.bg = '#fcdd67'
custom_ayu.normal.a.fg = '#000000'
custom_ayu.normal.b.bg = '#ffffff'
custom_ayu.normal.c.bg = '#ffffff'
custom_ayu.insert.b.bg = '#ffffff'
custom_ayu.visual.b.bg = '#ffffff'
custom_ayu.inactive.b.bg = '#ffffff'

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = custom_ayu,
    component_separators = '', section_separators = '',
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'location', 'branch', 'searchcount', 'fileformat'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
}
