vim.cmd("highlight clear")
vim.cmd("syntax reset")

vim.g.colors_name = "helix_custom"

local set = vim.api.nvim_set_hl

-- UI
set(0, "Normal",       { fg = "#bbccee", bg = "#0f0f17" })
set(0, "NormalFloat",  { fg = "#bbccee", bg = "#0f0f17" })
set(0, "CursorLine",   { bg = "#1a1a24" })
set(0, "CursorLineNr", { fg = "#ffffff", bold = true })
set(0, "LineNr",       { fg = "#ffffff" })
set(0, "Cursor",       { fg = "#0f0f17", bg = "#cfa3f5" })

set(0, "Visual",       { bg = "#424260" })

set(0, "StatusLine",   { fg = "#bbccee", bg = "#1a1a24" })
set(0, "StatusLineNC", { fg = "#424260", bg = "#0f0f17" })

set(0, "VertSplit",    { fg = "#313244" })
set(0, "WinSeparator", { fg = "#313244" })

-- Syntax
set(0, "Comment",      { fg = "#7d8599", italic = true })

set(0, "String",       { fg = "#db6797", italic = true })

set(0, "Number",       { fg = "#b4f09e" })
set(0, "Float",        { fg = "#b4f09e" })
set(0, "Boolean",      { fg = "#6bc7f5" })

set(0, "Constant",     { fg = "#f5c2e7" })

set(0, "Identifier",   { fg = "#66eeaa" })
set(0, "Function",     { fg = "#6bc7f5" })

set(0, "Keyword",      { fg = "#cfa3f5" })
set(0, "Conditional",  { fg = "#cfa3f5" })
set(0, "Repeat",       { fg = "#cfa3f5" })
set(0, "Statement",    { fg = "#cfa3f5" })

set(0, "Operator",     { fg = "#ff9d62" })

set(0, "Type",         { fg = "#cfa3f5" })
set(0, "Structure",    { fg = "#cfa3f5" })

set(0, "PreProc",      { fg = "#cfa3f5" })

set(0, "Special",      { fg = "#cfa3f5" })

set(0, "Delimiter",    { fg = "#bbccee" })

-- Markdown
set(0, "Title",        { fg = "#6bc7f5", bold = true })

-- Diff
set(0, "DiffAdd",      { fg = "#a6e3a1" })
set(0, "DiffDelete",   { fg = "#f38ba8" })
set(0, "DiffChange",   { fg = "#fab387" })

-- Diagnostics
set(0, "DiagnosticError", { fg = "#f38ba8" })
set(0, "DiagnosticWarn",  { fg = "#fab387" })
set(0, "DiagnosticInfo",  { fg = "#6bc7f5" })
set(0, "DiagnosticHint",  { fg = "#66eeaa" })
