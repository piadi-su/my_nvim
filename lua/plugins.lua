return {

  -- 🌳 TREESITTER
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

  -- ⚡ AUTOCOMPLETE
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },

        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),

        sources = {
          { name = "nvim_lsp" },
        },
      })
    end,
  },

  {
      "nvim-tree/nvim-tree.lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
	  require("nvim-tree").setup({
	      view = {
		  width = 30,
	      },
	      renderer = {
		  icons = {
		      show = {
			  file = true,
			  folder = true,
		      },
		  },
	      },
	  })

	  -- keybind stile NvChad
	  vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
      end,
  },

  {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = function()
	  require("nvim-autopairs").setup()
      end,
  },

  {
      "nvimdev/dashboard-nvim",
      event = "VimEnter",
      dependencies = { "nvim-tree/nvim-web-devicons" },

      config = function()
	  require("dashboard").setup({
	      theme = "doom",

	      config = {
		  header = {
		      "",
		      "",
		      "",
		      "███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄",
		      "███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄",
		      "███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███",
		      "███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███",
		      "███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███",
		      "███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███",
		      "███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███",
		      " ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀ ",
		      "",
		      "",
		      "",
		  },

		  center = {
		      {
			  icon = " ",
			  desc = " New File",
			  action = "ene | startinsert",
			  key = "n",
		      },
		      {
			  icon = " ",
			  desc = " Find File",
			  action = "Telescope find_files",
			  key = "f",
		      },
		      {
			  icon = " ",
			  desc = " Recent Files",
			  action = "Telescope oldfiles",
			  key = "r",
		      },
		      {
			  icon = " ",
			  desc = " Config",
			  action = "edit ~/.config/nvim/init.lua",
			  key = "c",
		      },
		      {
			  icon = " ",
			  desc = " Quit",
			  action = "qa",
			  key = "q",
		      },
		  },

		  footer = {
		      "⚡ welcome back hacker",
		  },
	      },
	  })
      end,
  },

}
