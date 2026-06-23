local M = {}

function M.setup()
  local set = vim.api.nvim_set_hl

  -- =========================
  -- BACKGROUND / UI
  -- =========================
  set(0, "Normal",       { fg = "#c8d3f5", bg = "#0b0f14" })
  set(0, "NormalFloat",  { fg = "#c8d3f5", bg = "#0b0f14" })

  set(0, "CursorLine",   { bg = "#111826" })
  set(0, "CursorColumn", { bg = "#111826" })

  set(0, "LineNr",       { fg = "#2a3440" })
  set(0, "CursorLineNr", { fg = "#00ff9c", bold = true })

  set(0, "Visual",       { bg = "#1a2a3a" })

  set(0, "StatusLine",   { fg = "#00ff9c", bg = "#0b0f14" })
  set(0, "StatusLineNC", { fg = "#2a3440", bg = "#0b0f14" })

  set(0, "VertSplit",    { fg = "#1f2a38" })
  set(0, "WinSeparator", { fg = "#1f2a38" })

  -- =========================
  -- SYNTAX CORE
  -- =========================
  set(0, "Comment",   { fg = "#3a4a5a", italic = true })

  set(0, "String",    { fg = "#00ff9c" })
  set(0, "Number",    { fg = "#ffcc66" })
  set(0, "Boolean",   { fg = "#ffcc66" })

  set(0, "Function",   { fg = "#66ccff" })
  set(0, "Identifier", { fg = "#c8d3f5" })

  set(0, "Keyword",    { fg = "#ff4d6d", bold = true })
  set(0, "Statement",  { fg = "#ff4d6d" })

  set(0, "Type",       { fg = "#9bfffa" })

  set(0, "Operator",   { fg = "#ff4d6d" })

  set(0, "Constant",   { fg = "#ffcc66" })

  set(0, "Delimiter",  { fg = "#7f8ea3" })

  -- =========================
  -- PENTEST / WARNINGS STYLE
  -- =========================
  set(0, "DiagnosticError", { fg = "#ff4d6d" })
  set(0, "DiagnosticWarn",  { fg = "#ffcc66" })
  set(0, "DiagnosticInfo",  { fg = "#66ccff" })
  set(0, "DiagnosticHint",  { fg = "#00ff9c" })

  -- =========================
  -- DIFF (git / logs)
  -- =========================
  set(0, "DiffAdd",    { fg = "#00ff9c" })
  set(0, "DiffDelete", { fg = "#ff4d6d" })
  set(0, "DiffChange", { fg = "#66ccff" })

  -- =========================
  -- UI ELEMENTS
  -- =========================
  set(0, "Search",     { fg = "#0b0f14", bg = "#00ff9c" })
  set(0, "IncSearch",  { fg = "#0b0f14", bg = "#ffcc66" })

  set(0, "Pmenu",      { fg = "#c8d3f5", bg = "#111826" })
  set(0, "PmenuSel",   { fg = "#0b0f14", bg = "#00ff9c" })

  set(0, "Title",      { fg = "#00ff9c", bold = true })

  -- =========================
  -- BRACKETS
  -- =========================
  set(0, "MatchParen", { fg = "#00ff9c", bold = true })

end

return M
