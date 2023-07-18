return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "nightly",
		dependencies = "nvim-web-devicons",
		config = function()
			vim.opt.termguicolors = true
			vim.keymap.set("n", "<M-1>", "<cmd>NvimTreeToggle<CR>")

			require("nvim-tree").setup()
		end,
	},
}
