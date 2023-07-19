return { {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup {
         size = vim.o.columns,
         open_mapping = [[<c-t>]],
         hide_numbers = true,
         direction = 'float',
         winbar = {
            enabled = false
          },
          float_opts = {
              border = 'curved'
          },
        }
	end,
} }
