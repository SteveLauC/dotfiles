return {
	{
		"utilyre/barbecue.nvim",
		version = "*",
		config = function()
			require("barbecue").setup()
			require("barbecue.ui").toggle(true)
		end,
	},
}
