require('config.options')
require('config.keybinds')
require('config.lazy')
vim.cmd.colorscheme("gruvbox")
-- vim.cmd.colorscheme("no-clown-fiesta")
-- vim.cmd.colorscheme("zenbones")
-- vim.cmd.colorscheme("tokyonight")
-- vim.cmd.colorscheme("catppuccin")


-- scegli qui il tema

-- local theme = "purple"
--
-- if theme == "red" then
--   require("plugins.colors.red_minimal").setup()
--
-- elseif theme == "spurple" then
--   require("plugins.colors.purple_minimal").setup()
--
-- elseif theme == "purple" then
--   require("plugins.colors.realpurple").setup()
--   -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- end

-- trasparency
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

-- semi black background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#1c1c1c" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1c1c1c" })
-- vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#222222", bg = "#000000" })

-- black background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#000000", bg = "#000000" })

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

-- vim.cmd(":hi statusline guibg=NONE")

vim.opt.undofile = true

-- directory dove salvare la history
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
