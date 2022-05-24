-- configuration for vscode-neovim



if vim.fn.exists('g:vscode') then
	-- vscode commentary keybingding
	vim.api.nvim_set_keymap("x", "gc", "<Plug>VSCodeCommentary", {})
	vim.api.nvim_set_keymap("n", "gc", "<Plug>VSCodeCommentary", {})
	vim.api.nvim_set_keymap("o", "gc", "<Plug>VSCodeCommentary", {})
	vim.api.nvim_set_keymap("n", "gcc", "<Plug>VSCodeCommentaryLine", {})
end
