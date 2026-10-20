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
          -- "csharp_ls",    -- C#
          "html",
          "cssls",
          "bashls",
          "lua_ls",
	  	  "gopls",
		  "ts_ls",
          "intelephense",
        },
      })
    end,
  },

  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     vim.lsp.config("clangd", {})
  --     vim.lsp.config("pyright", {})
  --     vim.lsp.config("csharp_ls", {})
  --     vim.lsp.config("html", {})
  --     vim.lsp.config("cssls", {})
  --     vim.lsp.config("bashls", {})
  --     vim.lsp.config("gopls", {})
  --  vim.lsp.config("ts_ls", {})
  --     vim.lsp.config("intelephense", {})
  --
  --     vim.lsp.config("lua_ls", {
  --       settings = {
  --         Lua = {
  --           diagnostics = {
  --             globals = { "vim" },
  --           },
  --         },
  --       },
  --     })
  --
  --     -- attach automatico
  --     vim.lsp.enable({
  --       "clangd",
  --       "pyright",
  --       "csharp_ls",
  --       "html",
  --       "cssls",
  --       "bashls",
  --       "lua_ls",
  --    "gopls",
  -- "ts_ls",
  --       "intelephense",
  --     })
  --   end,
  -- },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("clangd", { capabilities = capabilities })
      vim.lsp.config("pyright", { capabilities = capabilities })
      vim.lsp.config("csharp_ls", { capabilities = capabilities })
      vim.lsp.config("html", { capabilities = capabilities })
      vim.lsp.config("cssls", { capabilities = capabilities })
      vim.lsp.config("bashls", { capabilities = capabilities })
      vim.lsp.config("gopls", { capabilities = capabilities })
      vim.lsp.config("ts_ls", { capabilities = capabilities })
      vim.lsp.config("intelephense", { capabilities = capabilities })

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      vim.lsp.enable({
        "clangd",
        "pyright",
        "csharp_ls",
        "html",
        "cssls",
        "bashls",
        "lua_ls",
        "gopls",
        "ts_ls",
        "intelephense",
      })
    end,
  },


}
