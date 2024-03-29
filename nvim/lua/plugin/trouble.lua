return {
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({
				icons = true,

				action_keys = {
					close = "q",
					cancel = "<esc>",
					refresh = "r",
				},

				-- Use the icons set in the LSP settings
				-- See `lsp.lua` for more.
				use_diagnostic_signs = true,
			})
		end,
	},
}
