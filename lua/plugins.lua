return {

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "lua",
        "c",
        "cpp",
        "python",
        "c_sharp",
        "html",
        "css",
        "gomod",
        "gosum",
        "gowork",
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },


  {
	  dir = vim.fn.stdpath("config") .. "/lua/plugins/batnight",
	  name = "batnight",
	  lazy = false,
	  priority = 1000,

	  config = function()
		  vim.opt.rtp:append(
			  vim.fn.stdpath("config") .. "/lua/plugins/batnight"
		  )

		  vim.cmd.colorscheme("batnight")
	  end,
  },

}
