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

	vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
    end,
}

-- return {
--   'stevearc/oil.nvim',
--   opts = {
--     cd_netrw_behavior = "open",
--     autochdir = true, 
--   },
--   config = function(_, opts)
--     require("oil").setup(opts)
--     vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "open parten dir" })
--   end,
-- }
