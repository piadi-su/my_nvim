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

}
