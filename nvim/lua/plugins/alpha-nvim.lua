local alpha =  require('alpha')
local dashboard_cfg = require('alpha.themes.dashboard')

-- Set header
dashboard_cfg.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

-- set menu
dashboard_cfg.section.buttons.val = {
  dashboard_cfg.button( "n", "  New file" , ":ene <BAR> startinsert <CR>"),
  dashboard_cfg.button( "f", "  Find file", ":Telescope find_files<CR>"),
  dashboard_cfg.button( "t", "  Find Text", ":Telescope live_grep<CR>"),
  dashboard_cfg.button( "r", "  Recent", ":Telescope oldfiles<CR>"),
  dashboard_cfg.button( "q", "  Quit", ":qa<CR>"),
}


-- have no idea what is this, but it seems necessary, right?
local handle = io.popen('fortune')
local fortune = handle:read("*a")
handle:close()
dashboard_cfg.section.footer.val = fortune
dashboard_cfg.config.opts.noautocmd = true
vim.cmd[[autocmd User AlphaReady echo 'ready']]


alpha.setup(dashboard_cfg.config)
