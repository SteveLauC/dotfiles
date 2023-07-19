return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons", "neovim-ayu" },

		config = function()
			local bufferline = require("bufferline")
			bufferline.setup({
				options = {
					buffer_close_icon = "",
					style_preset = {
						bufferline.style_preset.minimal,
						bufferline.style_preset.no_italic,
					},

					show_buffer_icons = false,
				},
			})
		end,
	},
}
