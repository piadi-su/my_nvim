return{
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    config = function()
	require("dashboard").setup({
	    theme = "doom",

	    config = {
		header = {
		    "",
		    "",
		    "",
		    "",
		    "",
		    "⠀⠀⠀⠀⠀⠀⠀⢀⣰⣸⣤⣆⡀⠀⠀⠀⠀⠀⠀⠀",
		    "⠉⠀⠢⣭⣼⣶⣄⣼⣿⣿⣿⣿⡧⣀⣠⣀⣤⡀⠀⠀",
		    "⠂⡩⢔⣿⣿⣿⡿⢿⣁⠙⢉⣿⣿⢿⣿⣿⣷⡦⢤⡀",
		    "⠀⡰⡹⣿⣿⣿⣧⠘⢮⣉⣹⠋⠁⣾⣿⣿⣿⠦⡁⠊",
		    "⠊⠐⢰⣾⡿⡏⠻⣷⣾⣭⣿⣴⣾⣿⣿⣿⣿⡕⠛⠄",
		    "⠀⢀⣼⡿⠁⠀⠀⠀⢻⣿⣿⣿⡿⠁⠀⠀⠹⣿⣄⠀",
		    "⠀⣼⣿⠁⠀⠀⠀⣤⣾⣿⣿⣿⣷⣄⠀⠀⠀⠻⣿⣆",
		    "⠈⠿⣿⡄⠀⠀⣠⣭⣿⣿⣻⣿⣿⣿⡄⠀⠀⠀⣿⡟",
		    "⠀⠀⣿⡇⢀⣾⣟⣿⣿⣿⣿⣿⣿⣿⣿⣀⠀⠀⣿⠃",
		    "⠀⠀⢸⣧⠀⣿⣿⠟⡿⡿⢻⠿⣿⣿⣿⣿⡄⠀⣿⠀",
		    "⠀⠀⢤⣿⣼⣿⠏⠀⠃⠁⠈⠀⠁⢻⣯⣏⠀⢸⣿⠀",
		    "⠀⠀⢀⢋⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣤⣿⣿⠀",
		    "⠀⠀⣾⣺⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⢰⣿⡏⢸⡿⡇",
		    "⠀⠀⠈⠻⡾⢿⣧⠀⠀⠀⠀⠀⠀⠀⢸⣿⠁⣾⡾⠁",
		    "⠀⠀⠀⠀⠀⠘⣿⡀⠀⠀⠀⠀⠀⠀⢸⡟⠀⠈⠀⠀",
		    "⠀⠀⠀⠀⠀⠀⢻⣇⠀⠀⠀⠀⠀⠀⣼⡇⠀⠀⠀⠀",
		    "⠀⠀⠀⠀⠀⢀⣿⠃⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀",
		    "⠀⠀⠀⠀⠀⢸⡟⠀⠀⠀⠀⠀⠀⠀⢸⣇⠀⠀⠀⠀",
		    "⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀",
		    "",
		},
		center = {
		    {
			icon = "",
			desc = " Find File",
			action = "Telescope find_files",
			key = "f",
		    },
		    {
			icon = "",
			desc = " Recent Files",
			action = "Telescope oldfiles",
			key = "r",
		    },
		},

		footer = {
		    " | welcome back |",
		},
	    },
	})
    end,
}

