return{
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
	require("toggleterm").setup({
	    size = 15,
	    open_mapping = [[<c-\>]], -- toggle con CTRL + \
	    direction = "horizontal",
	})
    end,
}
