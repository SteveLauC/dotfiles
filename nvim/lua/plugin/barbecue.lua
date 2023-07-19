return {
	{
		"utilyre/barbecue.nvim",
		version = "*",
		config = function()
			require("barbecue").setup({
				symbols = {
					---Modification indicator.
					---
					---@type string
					modified = "●",

					---Truncation indicator.
					---
					---@type string
					ellipsis = "…",

					---Entry separator.
					---
					---@type string
					separator = "",
				},
			})
			require("barbecue.ui").toggle(true)
		end,
	},
}
