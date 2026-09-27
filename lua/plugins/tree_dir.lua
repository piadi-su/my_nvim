return{
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
	require("nvim-tree").setup({
	    view = {
		width = 30,
	    },
	    renderer = {
		icons = {
		    show = {
			file = true,
			folder = true,
		    },
		},
	    },
	})

	-- keybind stile NvChad
	vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
    end,
}

-- return {
--   'stevearc/oil.nvim',
--   opts = {
--     -- Cambia la directory di Neovim quando navighi tra le cartelle
--     cd_netrw_behavior = "open",
--     autochdir = true, 
--   },
--   config = function(_, opts)
--     require("oil").setup(opts)
--     -- Sostituisce del tutto netrw / :Ex
--     vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Apri cartella padre" })
--   end,
-- }
