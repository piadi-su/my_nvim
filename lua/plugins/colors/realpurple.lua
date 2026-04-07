local M = {}

-- palette
local c = {
  bg = "#0b0a12",
  bg2 = "#12101f",
  panel = "#1a1530",
  sel_bg = "#2a1f4d",

  fg = "#ebe6ff",
  fg_dim = "#c4bddf",
  comment = "#8f87b2",

  purple = "#9d72ff",
  purple2 = "#c3a6ff",
  purple3 = "#6f4ec2",
  violet = "#4b347f",
  magenta = "#d58aff",
  rose = "#e6b0ff",

  error = "#ff7ab3",
  warn = "#caa2ff",
  info = "#9d72ff",
  hint = "#7a60c8",
}

function M.setup()
  vim.cmd("set termguicolors")
  vim.cmd("syntax reset")

  local set = vim.api.nvim_set_hl

  -- base
  set(0, "Normal", { fg = c.fg, bg = c.bg })
  set(0, "EndOfBuffer", { fg = c.bg })
  set(0, "SignColumn", { bg = c.bg })

  -- line
  set(0, "CursorLine", { bg = c.bg2 })

  -- numeri
  set(0, "LineNr", { fg = c.comment })
  set(0, "CursorLineNr", { fg = c.purple })

  -- syntax
  set(0, "Comment", { fg = c.comment, italic = true })
  set(0, "Keyword", { fg = c.purple })
  set(0, "String", { fg = c.rose })
  set(0, "Function", { fg = c.purple2 })
  set(0, "Identifier", { fg = c.fg })
  set(0, "Type", { fg = c.magenta })

  -- diagnostics
  set(0, "DiagnosticError", { fg = c.error })
  set(0, "DiagnosticWarn", { fg = c.warn })
  set(0, "DiagnosticInfo", { fg = c.info })
  set(0, "DiagnosticHint", { fg = c.hint })

  -- visual
  set(0, "Visual", { bg = c.sel_bg })

  -- popup
  set(0, "NormalFloat", { bg = c.bg2 })
  set(0, "FloatBorder", { fg = c.purple, bg = c.bg2 })
end

return M
