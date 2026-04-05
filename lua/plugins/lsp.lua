return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",       -- C / C++
          "pyright",      -- Python
          "csharp_ls",    -- C#
          "html",
          "cssls",
          "bashls",
          "lua_ls",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      -- 🔥 nuovo metodo (no deprecation)
      vim.lsp.config("clangd", {})
      vim.lsp.config("pyright", {})
      vim.lsp.config("csharp_ls", {})
      vim.lsp.config("html", {})
      vim.lsp.config("cssls", {})
      vim.lsp.config("bashls", {})

      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      -- attach automatico
      vim.lsp.enable({
        "clangd",
        "pyright",
        "csharp_ls",
        "html",
        "cssls",
        "bashls",
        "lua_ls",
      })
    end,
  },
}
