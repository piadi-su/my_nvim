return{
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    config = function()
	require("dashboard").setup({
	    theme = "doom",

	    config = {
		header = {
			"                                                                         ",
			"                _                                                        ",
			"               (_)                                                       ",
			"         ____.--^.                                                       ",
			"        /:  /    |                                                       ",
			"       /:  `--=--'                                                       ",
			"      /: __[\\==`-.___                                                   ",
			"     /__|\\ _~~~~~~   ~~--..__                                           ",
			"     \\   \\|::::|-----.....___|~--.                                     ",
			"      \\ _\\_~~~~~-----:|:::______//---...___                            ",
			"      [\\  \\  __  --     \\       ~  \\_      ~~~===------==-...____    ",
			"      [============================================================-     ",
			"      /         __/__   --  /__    --       /____....----''''~~~~        ",
			"     /  /   ==           ____....=---='''~~~~                            ",
			"    /____....--=-''':~~~~                                                ",
			"            ~--~                                                         ",
			"                                                                         ",
			"                                                               Neovim    ",
			"                                                                         ",
			"                                                                         ",
			"                                                                         ",
		},
		center = {
			{
				icon = "",
				desc = "find file",
				action = "Telescope find_files",
				key = "f",
			},
			{
				icon = "",
				desc = "recent files",
				action = "Telescope oldfiles",
				key = "r",
			},
			{
				icon = "",
				desc = "quit",
				action = "quit",
				key = "q",
			},
		},

		footer = {
		    "",
		},
	    },
	})
    end,
}
--
-- return{
--     "nvimdev/dashboard-nvim",
--     event = "VimEnter",
--     dependencies = { "nvim-tree/nvim-web-devicons" },
--
--     config = function()
-- 	require("dashboard").setup({
-- 	    theme = "doom",
--
-- 	    config = {
-- 		header = {
-- 		    "",
-- 		    "",
-- 		    "",
-- 		    "",
-- 		    "",
-- 		    "⠀⠀⠀⠀⠀⠀⠀⢀⣰⣸⣤⣆⡀⠀⠀⠀⠀⠀⠀⠀",
-- 		    "⠉⠀⠢⣭⣼⣶⣄⣼⣿⣿⣿⣿⡧⣀⣠⣀⣤⡀⠀⠀",
-- 		    "⠂⡩⢔⣿⣿⣿⡿⢿⣁⠙⢉⣿⣿⢿⣿⣿⣷⡦⢤⡀",
-- 		    "⠀⡰⡹⣿⣿⣿⣧⠘⢮⣉⣹⠋⠁⣾⣿⣿⣿⠦⡁⠊",
-- 		    "⠊⠐⢰⣾⡿⡏⠻⣷⣾⣭⣿⣴⣾⣿⣿⣿⣿⡕⠛⠄",
-- 		    "⠀⢀⣼⡿⠁⠀⠀⠀⢻⣿⣿⣿⡿⠁⠀⠀⠹⣿⣄⠀",
-- 		    "⠀⣼⣿⠁⠀⠀⠀⣤⣾⣿⣿⣿⣷⣄⠀⠀⠀⠻⣿⣆",
-- 		    "⠈⠿⣿⡄⠀⠀⣠⣭⣿⣿⣻⣿⣿⣿⡄⠀⠀⠀⣿⡟",
-- 		    "⠀⠀⣿⡇⢀⣾⣟⣿⣿⣿⣿⣿⣿⣿⣿⣀⠀⠀⣿⠃",
-- 		    "⠀⠀⢸⣧⠀⣿⣿⠟⡿⡿⢻⠿⣿⣿⣿⣿⡄⠀⣿⠀",
-- 		    "⠀⠀⢤⣿⣼⣿⠏⠀⠃⠁⠈⠀⠁⢻⣯⣏⠀⢸⣿⠀",
-- 		    "⠀⠀⢀⢋⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣤⣿⣿⠀",
-- 		    "⠀⠀⣾⣺⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⢰⣿⡏⢸⡿⡇",
-- 		    "⠀⠀⠈⠻⡾⢿⣧⠀⠀⠀⠀⠀⠀⠀⢸⣿⠁⣾⡾⠁",
-- 		    "⠀⠀⠀⠀⠀⠘⣿⡀⠀⠀⠀⠀⠀⠀⢸⡟⠀⠈⠀⠀",
-- 		    "⠀⠀⠀⠀⠀⠀⢻⣇⠀⠀⠀⠀⠀⠀⣼⡇⠀⠀⠀⠀",
-- 		    "⠀⠀⠀⠀⠀⢀⣿⠃⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀",
-- 		    "⠀⠀⠀⠀⠀⢸⡟⠀⠀⠀⠀⠀⠀⠀⢸⣇⠀⠀⠀⠀",
-- 		    "⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀",
-- 		    "",
-- 		},
-- 		center = {
-- 		    {
-- 			icon = "",
-- 			desc = " Find File",
-- 			action = "Telescope find_files",
-- 			key = "f",
-- 		    },
-- 		    {
-- 			icon = "",
-- 			desc = " Recent Files",
-- 			action = "Telescope oldfiles",
-- 			key = "r",
-- 		    },
-- 		},
--
-- 		footer = {
-- 		    " | welcome back |",
-- 		},
-- 	    },
-- 	})
--     end,
-- }
