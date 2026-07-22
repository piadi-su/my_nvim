local c = require("batnight.palette").colors

local M = {}

M.setup = function()

	local hl = vim.api.nvim_set_hl

	-- editor
	hl(0,"Normal",{
		fg = c.fg,
		bg = c.bg
	})

	hl(0,"NormalFloat",{
		fg = c.fg,
		bg = c.bg_alt
	})

	hl(0,"CursorLine",{
		bg = c.bg_alt
	})

	hl(0,"CursorLineNr",{
		fg = c.purple,
		bold = true
	})

	hl(0,"LineNr",{
		fg = c.gray
	})


	-- syntax
	hl(0,"Comment",{
		fg = c.comment,
		italic = true
	})

	hl(0,"String",{
		fg = c.green
	})

	hl(0,"Number",{
		fg = c.orange
	})

	hl(0,"Boolean",{
		fg = c.orange
	})

	hl(0,"Function",{
		fg = c.blue
	})

	hl(0,"Keyword",{
		fg = c.purple,
		bold = true
	})

	hl(0,"Type",{
		fg = c.cyan
	})


	-- visual
	hl(0,"Visual",{
		bg = c.selection
	})


	-- popup
	hl(0,"Pmenu",{
		fg = c.fg,
		bg = c.bg_alt
	})

	hl(0,"PmenuSel",{
		fg = c.bg,
		bg = c.purple
	})


	-- diagnostics
	hl(0,"DiagnosticError",{
		fg = c.red
	})

	hl(0,"DiagnosticWarn",{
		fg = c.yellow
	})

	hl(0,"DiagnosticInfo",{
		fg = c.cyan
	})

	-- new add

	hl(0, "WinSeparator", {
		fg = c.border
	})

	hl(0, "FloatBorder", {
		fg = c.violet
	})

	hl(0, "TelescopeBorder", {
		fg = c.border
	})

	hl(0, "NeoTreeNormal", {
		bg = c.bg_alt
	})

	hl(0, "StatusLine", {
		fg = c.fg,
		bg = c.bg_alt
	})

	hl(0, "MatchParen", {
		fg = c.purple,
		bold = true
	})


end


return M
