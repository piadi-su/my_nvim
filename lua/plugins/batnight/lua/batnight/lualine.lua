local c = require("batnight.palette").colors

return {

	normal = {
		a = {
			fg = c.bg,
			bg = c.purple,
			gui = "bold"
		},

		b = {
			fg = c.fg,
			bg = c.bg_alt
		},

		c = {
			fg = c.fg_dim,
			bg = c.bg
		},
	},


	insert = {
		a = {
			fg = c.bg,
			bg = c.cyan,
			gui = "bold"
		},
	},


	visual = {
		a = {
			fg = c.bg,
			bg = c.violet,
			gui = "bold"
		},
	},


	command = {
		a = {
			fg = c.bg,
			bg = c.yellow,
			gui = "bold"
		},
	},


	inactive = {
		a = {
			fg = c.gray,
			bg = c.bg
		},
		b = {
			fg = c.gray,
			bg = c.bg
		},
		c = {
			fg = c.gray,
			bg = c.bg
		},
	}

}
