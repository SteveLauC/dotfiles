local ayu = require('ayu')

-- Disable italic for comments
local colors = require('ayu.colors')
colors.generate()
ayu.setup({
  overrides = function()
    return { Comment = { fg = colors.comment } }
  end
})

-- apply the theme
ayu.colorscheme()
