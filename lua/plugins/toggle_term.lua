return{
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<C-t>]],
			-- open_mapping = [[<c-\>]], 
			direction = "float",
			dir = "autochdir",
			float_opts = {
				border = "none",
				width = function()
					return vim.o.columns
				end,
				height = function()
					return vim.o.lines
				end,
			},
		})

		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Esci dalla modalita terminale" })
	end,

}
