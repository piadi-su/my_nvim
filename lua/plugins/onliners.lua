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

	   {
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			-- indent = { char = "›" },
			-- indent = { char = "." },
			indent = { char = "│" },
			-- indent = { char = "│" },
			-- indent = { char = "▏" },
			-- indent = { char = "╎" },
			-- indent = { char = "┇" },
			scope = {
				enabled = true,
				-- show_start = true,
				-- show_end = true,
			},
			exclude = {
				filetypes = {
					"dashboard",
					"NvimTree",
					"lazy",
					"mason",
					"help",
				},
			},
	   	},
	},

	-- {
	-- 	"karb94/neoscroll.nvim",
	-- 	config = function()
	-- 		require('neoscroll').setup({})
	-- 	end
	-- },

    {
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup{}
		end
    },

	{
		'MeanderingProgrammer/render-markdown.nvim',
		dependencies = { 
			'nvim-treesitter/nvim-treesitter', 
			'nvim-tree/nvim-web-devicons' -- opzionale, per le icone dei linguaggi nei blocchi di codice
		},
		opts = {},
		ft = { 'markdown' },
	},

	-- ~/.config/nvim/lua/plugins/zenmode.lua
	-- {
	-- 	"folke/zen-mode.nvim",
	-- 	opts = {
	-- 		window = {
	-- 			width = 190,
	-- 		},
	-- 	},
	-- 	config = function(_, opts)
	-- 		local zen_mode = require("zen-mode")
	-- 		zen_mode.setup(opts)
	--
	-- 		-- Keymap: Spazio + a + s + d
	-- 		vim.keymap.set("n", "<leader>asd", "<cmd>ZenMode<CR>", { desc = "Toggle ZenMode" })
	--
	-- 		-- Autocmd per attivarlo automaticamente all'apertura di un file
	-- 		vim.api.nvim_create_autocmd("BufReadPost", {
	-- 			group = vim.api.nvim_create_augroup("AutoZenMode", { clear = true }),
	-- 			callback = function()
	-- 				if vim.bo.buftype == "" and vim.fn.expand("%") ~= "" then
	-- 					vim.schedule(function()
	-- 						zen_mode.open()
	-- 					end)
	-- 				end
	-- 			end,
	-- 		})
	-- 	end,
	-- },

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
	--
	--
	

}
