-- local function enable_transparency()
--   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- end

return {

  {
    "folke/tokyonight.nvim",
    -- config = function()
    --   enable_transparency()
    -- end,
  },

  -- NORMAL GRUVBOX
  {
    "ellisonleao/gruvbox.nvim",
    -- config = function()
    --   enable_transparency()
    -- end,
  },


  {
	  "silentium-theme/silentium.nvim",
	  lazy = false,
	  priority = 1000,
	  config = function()
		  local silentium = require("silentium")

		  silentium.setup({
			  accent = silentium.accents.peach, -- o qualsiasi altro colore/accetto desiderato
		  })

		  vim.cmd.colorscheme("silentium")
	  end,
  },


  {
      "mcchrish/zenbones.nvim",
      dependencies = "rktjmp/lush.nvim",
      priority = 1000,
  },

  {
      "aktersnurra/no-clown-fiesta.nvim",
	  --    priority = 1000,
	  --    config = function()
	  -- vim.cmd.colorscheme("no-clown-fiesta")
	  --    end
  },

  {
    "CosecSecCot/cosec-twilight.nvim",
    lazy = false,
    priority = 1000,
    dependencies = "rktjmp/lush.nvim",
  },



  {
	  "navarasu/onedark.nvim",
	  priority = 1000,
	  config = function()
		  require("onedark").setup({
			  style = "dark",
		  })
		  require("onedark").load()
	  end,
  },

  {
	  "M32341/dracula.nvim",
	  lazy = false,
	  priority = 1000,
	  config = function()
		  local dracula = require("dracula")
		  dracula.setup({
			  colors = {
				  bg = "#21222c", -- Sfondo più scuro simile a Doom Emacs
			  },
			  show_end_of_buffer = true,
			  transparent_bg = false,
		  })
		  vim.cmd.colorscheme("dracula")
	  end,
  },




  -- {
  --  "nvim-lualine/lualine.nvim",
  --  dependencies = {
  --   "nvim-tree/nvim-web-devicons",
  --  },
  --  opts = {
  --   theme = "auto",
  --  },
  -- },


--   {
--     "nvim-lualine/lualine.nvim",
--     dependencies = {
--         "nvim-tree/nvim-web-devicons",
--     },
--     opts = {
--         options = {
--             theme = "auto",
--             globalstatus = true,
--         },
--
--         sections = {
--             lualine_a = { "mode" },
--             lualine_b = { "branch", "diff" },
--             lualine_c = { "filename" },
--
--             lualine_x = {},
--             lualine_y = { "progress" },
--             lualine_z = { "location" },
--         },
--
--         inactive_sections = {
--             lualine_a = {},
--             lualine_b = {},
--             lualine_c = { "filename" },
--             lualine_x = {},
--             lualine_y = {},
--             lualine_z = { "location" },
--         },
--     },
-- }
--


  {
   "nvim-lualine/lualine.nvim",
   dependencies = {
    "nvim-tree/nvim-web-devicons",
   },
   opts = {
    options = {
  	  theme = "auto",
  	  icons_enabled = false,
  	  section_separators = "",
  	  component_separators = "",
  	  globalstatus = true,
    },

    sections = {
  	  lualine_a = { "mode" },
  	  lualine_b = { "branch" },
  	  lualine_c = { "filename" },
  	  lualine_x = {},
  	  lualine_y = { "progress" },
  	  lualine_z = { "location" },
    },

    inactive_sections = {
  	  lualine_a = {},
  	  lualine_b = {},
  	  lualine_c = { "filename" },
  	  lualine_x = {},
  	  lualine_y = {},
  	  lualine_z = {},
    },
   },
  }

}
