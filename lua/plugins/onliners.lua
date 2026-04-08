return {
    {
	'ojroques/vim-oscyank',
    },

    {
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },

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
}
