return {
	{
		"goolord/alpha-nvim",
		config = function()
			local alpha = require("alpha")
			local dashboard_cfg = require("alpha.themes.dashboard")

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
				-- nf-oct-file_added
				dashboard_cfg.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
				-- nf-md-file_search_outline
				dashboard_cfg.button("f", "󰱽  Find file", ":Telescope find_files<CR>"),
				-- nf-md-text_search
				dashboard_cfg.button("t", "󱎸  Find Text", ":Telescope live_grep<CR>"),
				-- nf-md-file_clock_outline
				dashboard_cfg.button("r", "󱋢  Recent", ":Telescope oldfiles<CR>"),
				-- nf-md-close_circle_outline
				dashboard_cfg.button("q", "󰅚  Quit", ":qa<CR>"),
			}

			alpha.setup(dashboard_cfg.config)
		end,
	},
}
