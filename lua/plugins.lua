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
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },

}
