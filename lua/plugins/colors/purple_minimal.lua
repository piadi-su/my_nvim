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
  set(0, "CursorLineNr", { fg = "#bd93f9" })

  -- syntax
  set(0, "Comment", { fg = "#4b3b5c", italic = true })
  set(0, "Keyword", { fg = "#bd93f9" })
  set(0, "String", { fg = "#d6acff" })
  set(0, "Function", { fg = "#caa9fa" })
  set(0, "Identifier", { fg = "#bd93f9" })
  set(0, "Type", { fg = "#e0c3fc" })

  -- popup / float
  set(0, "NormalFloat", { bg = "#000000" })
  set(0, "FloatBorder", { fg = "#bd93f9", bg = "#000000" })

  -- visual
  set(0, "Visual", { bg = "#2a1a3a" })
end

return M
