local M = {}

function M.setup()
  vim.cmd("set termguicolors")
  vim.cmd("syntax reset") -- 👈 NON rompe lualine

  local set = vim.api.nvim_set_hl

  -- base
  set(0, "Normal", { fg = "#d4d4d4", bg = "#000000" })
  set(0, "EndOfBuffer", { fg = "#000000", bg = "#000000" })
  set(0, "SignColumn", { bg = "#000000" })

  -- cursor / line
  set(0, "CursorLine", { bg = "#111111" })

  -- numeri
  set(0, "LineNr", { fg = "#333333" })
  set(0, "CursorLineNr", { fg = "#ff4d4d" })

  -- syntax
  set(0, "Comment", { fg = "#5c2a2a", italic = true })
  set(0, "Keyword", { fg = "#ff4d4d" })
  set(0, "String", { fg = "#ff8888" })
  set(0, "Function", { fg = "#ff6666" })
  set(0, "Identifier", { fg = "#ff4d4d" })
  set(0, "Type", { fg = "#ff9999" })

  -- popup / float
  set(0, "NormalFloat", { bg = "#000000" })
  set(0, "FloatBorder", { fg = "#ff4d4d", bg = "#000000" })

  -- visual
  set(0, "Visual", { bg = "#331111" })
end

return M
