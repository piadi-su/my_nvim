return {
    {
	'ojroques/vim-oscyank',
    },

    {
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end },

    -- auto closing parentesis
    {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
	    require("nvim-autopairs").setup()
	end,
    },

    {
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",      -- 👈 QUI
			"hrsh7th/cmp-buffer",    -- (consigliato)
			"L3MON4D3/LuaSnip",
		},
		sources = {
			{ name = "nvim_lsp" },
			{ name = "path" },
			{ name = "buffer" },
		},
	},

	--    {
	-- 	"lukas-reineke/indent-blankline.nvim",
	-- 	main = "ibl",
	-- 	opts = {
	-- 		indent = { char = "│" },
	-- 		-- indent = { char = "▏" },
	-- 		-- indent = { char = "╎" },
	-- 		-- indent = { char = "┇" },
	-- 		scope = {
	-- 			enabled = true,
	-- 			-- show_start = true,
	-- 			-- show_end = true,
	-- 		},
	-- 		exclude = {
	-- 			filetypes = {
	-- 				"dashboard",
	-- 				"NvimTree",
	-- 				"lazy",
	-- 				"mason",
	-- 				"help",
	-- 			},
	-- 		},
	--    	},
	-- },
	--    {
	-- "echasnovski/mini.animate",
	-- version = false,
	-- opts = {
	--     scroll = { enable = true },
	--     cursor = { enable = true },
	--     resize = { enable = true },
	--     open = { enable = true },
	--     close = { enable = true },
	-- },
	--    },

    {
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup{}
		end
    },

	-- {
	-- 	"sphamba/smear-cursor.nvim",
	--
	-- 	opts = {
	-- 		smear_between_buffers = true,
	--
	-- 		smear_between_neighbor_lines = true,
	--
	-- 		scroll_buffer_space = true,
	--
	-- 		legacy_computing_symbols_support = false,
	--
	-- 		smear_insert_mode = true,
	-- 	},
	--
	-- },

	-- {
	-- 	"HiPhish/rainbow-delimiters.nvim",
	-- },


}
