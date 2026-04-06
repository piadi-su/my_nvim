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
}
