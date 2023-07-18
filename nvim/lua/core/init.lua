vim.opt.nu = true
vim.opt.rnu = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.clipboard:append("unnamedplus")
vim.opt.cmdheight = 0
vim.opt.bg = "light"

-- Autu-reload the buffer
vim.opt.autoread = true
vim.api.nvim_create_autocmd(
	-- when the following events happen
	{ "FocusGained", "TermClose", "TermLeave", "BufEnter", "CursorHold", "CursorHoldI" },
	{ command = "checktime" }
)

require("core.lazy")
require("core.color")
