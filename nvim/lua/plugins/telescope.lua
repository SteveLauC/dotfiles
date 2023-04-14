-- key binding for telescope

-- control + f
vim.api.nvim_set_keymap("n", "<C-f>", "<cmd>Telescope find_files<cr>", {}) 
vim.api.nvim_set_keymap("n", "<C-g>", "<cmd>Telescope live_grep<cr>", {})
-- you need to press ctrl-b-b to enable this cuz ctrl-b is the prefix key of tmux
vim.api.nvim_set_keymap("n", "<C-b>", "<cmd>Telescope buffers<cr>", {})    
vim.api.nvim_set_keymap("n", "<C-s>", "<cmd>Telescope lsp_document_symbols<cr>", {})    
vim.api.nvim_set_keymap("n", "<C-d>", "<cmd>Telescope diagnostics<cr>", {})    

vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", {})

require('telescope').setup{  
	defaults = { 
		file_ignore_patterns = { 
			"target"                  -- ingore `target` dir in rust workspace
		}
	}
}
