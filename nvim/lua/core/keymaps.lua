-- To navigate between buffers
vim.keymap.set("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>")

-- File system tree
vim.keymap.set("n", "<M-1>", "<cmd>Neotree toggle position=left<CR>")

-- Show error message
vim.keymap.set("n", "<M-6>", "<cmd>TroubleToggle<CR>")
