require('config.options')
require('config.keybinds')
require('config.lazy')

-- vim.cmd.colorscheme("quiet")
vim.cmd.colorscheme("default")
-- vim.cmd.colorscheme("koehler")
-- vim.cmd.colorscheme("gruvbox")
-- vim.cmd.colorscheme("dracula")
-- vim.cmd.colorscheme("no-clown-fiesta")
-- vim.cmd.colorscheme("zenbones")
-- vim.cmd.colorscheme("tokyonight")
-- vim.cmd.colorscheme("onedark")
-- vim.cmd.colorscheme("cosec-twilight")
-- vim.cmd.colorscheme("retrobox")
-- vim.cmd.colorscheme("silentium")
-- vim.cmd("colorscheme dracula")



-- for my colorscheme
-- require("config.lazy")
-- vim.schedule(function()
-- 	vim.cmd.colorscheme("batnight")
-- end)





-- scegli qui il tema

-- local theme = "bloodvoid"
--
-- if theme == "red" then
--   require("plugins.colors.red_minimal").setup()
-- elseif theme == "spurple" then
--   require("plugins.colors.purple_minimal").setup()
-- elseif theme == "purple" then
--   require("plugins.colors.realpurple").setup()
--   -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- elseif theme == "helix" then
--   require("plugins.colors.helix")
-- elseif theme == "hacker" then
--   require("plugins.colors.hacker").setup()
-- elseif theme == "bloodvoid" then
--   require("lua.plugins.colors.blodvoid").setup()
-- end



-- trasparency
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

-- semi black background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#000000", bg = "#000000" })

-- black background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#121212" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#121212" })
-- vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#121212", bg = "#121212" })

-- vim.api.nvim_set_hl(0, "Normal", { bg = "#181818" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#181818" })
-- vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#181818", bg = "#181818" })

vim.opt.termguicolors = true

-- normal statusline
-- vim.opt.guicursor = "a:block"
-- vim.cmd(":hi statusline guibg=NONE")

vim.opt.undofile = true

-- directory dove salvare la history
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
