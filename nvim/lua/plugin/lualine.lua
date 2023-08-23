return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = "neovim-ayu",
		config = function()
			local custom_ayu = require("lualine.themes.ayu")
			-- normal mode
			custom_ayu.normal.a.bg = "#fc9867"
			custom_ayu.normal.a.fg = "#403e41"

			custom_ayu.normal.b.bg = "#ffffff"
			custom_ayu.normal.b.fg = "#403e41"

			custom_ayu.normal.c.bg = "#ffffff"

			-- insert mode
			custom_ayu.insert.b.bg = "#ffffff"

			-- visual mode
			custom_ayu.visual.b.bg = "#ffffff"

			-- inactive mode
			custom_ayu.inactive.b.bg = "#ffffff"

			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = custom_ayu,
					component_separators = "",
					section_separators = "",
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
					},
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "location", "branch", "searchcount", "fileformat" },
					lualine_c = {},
					lualine_x = {},
					lualine_y = {},
					lualine_z = {},
				},
			})
		end,
	},
}
