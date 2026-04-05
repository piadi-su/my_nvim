require('config.options')
require('config.keybinds')
require('config.lazy')
vim.cmd.colorscheme("gruvbox")

vim.opt.undofile = true

-- directory dove salvare la history
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
