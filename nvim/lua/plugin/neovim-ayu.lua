return {
	{
		"Shatur/neovim-ayu",
		config = function()
			local ayu = require("ayu")

			-- Disable italic for comments
			local colors = require("ayu.colors")
			colors.generate()
			ayu.setup({
				overrides = function()
					return {
						-- change the bg to pure white
						Normal = { bg = colors.white, fg = "#272b30" },
						SignColumn = { bg = colors.white },
						Comment = { fg = colors.comment },
					}
				end,
			})

			-- apply the theme
			ayu.colorscheme()
		end,
	},
}
