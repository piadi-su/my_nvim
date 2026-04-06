require('config.options')
require('config.keybinds')
require('config.lazy')
vim.cmd.colorscheme("tokyonight")
-- vim.cmd.colorscheme("gruvbox")
-- scegli qui il tema

-- local theme = "tokyo"
--
-- if theme == "tokyo" then
--   vim.cmd.colorscheme("tokyonight")
-- elseif theme == "gruvbox" then
--   vim.cmd.colorscheme("gruvbox")
-- elseif theme == "red" then
--   require("plugins.colors.red_minimal").setup()
-- elseif theme == "purple" then
--   require("plugins.colors.purple_minimal").setup()
-- end

-- trasparency
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

vim.opt.undofile = true

-- directory dove salvare la history
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
