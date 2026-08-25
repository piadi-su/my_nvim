return{
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<C-t>]], -- Mappato su CTRL + T
			-- open_mapping = [[<c-\>]], -- toggle con CTRL + \
			direction = "float",      -- 'float' permette di coprire l'intero schermo
			dir = "autochdir",        -- Sincronizza il terminale con la cartella del file corrente
			float_opts = {
				border = "none",        -- 'none' rimuove il bordo per occupare tutto lo spazio (oppure 'curved')
				width = function()
					return vim.o.columns  -- Copre il 100% della larghezza dell'editor
				end,
				height = function()
					return vim.o.lines    -- Copre il 100% dell'altezza dell'editor
				end,
			},
		})

		-- Uscire dal terminale con ESC
		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Esci dalla modalita terminale" })
	end,

}
