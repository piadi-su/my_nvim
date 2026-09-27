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
	  "cpea2506/one_monokai.nvim",
  },

  {
	  'AlexvZyl/nordic.nvim',
	  lazy = false,
	  priority = 1000,
	  config = function()
		  require('nordic').load()
	  end
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
	  "nvim-lualine/lualine.nvim",
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	  config = function()
		  -- Tema totalmente nero / grigio scuro
		  local pure_black = {
			  normal   = { a = { fg = "#888888", bg = "#000000" }, b = { fg = "#444444", bg = "#000000" }, c = { fg = "#666666", bg = "#000000" } },
			  insert   = { a = { fg = "#aaaaaa", bg = "#000000" }, b = { fg = "#444444", bg = "#000000" }, c = { fg = "#666666", bg = "#000000" } },
			  visual   = { a = { fg = "#aaaaaa", bg = "#000000" }, b = { fg = "#444444", bg = "#000000" }, c = { fg = "#666666", bg = "#000000" } },
			  replace  = { a = { fg = "#cc9999", bg = "#000000" }, b = { fg = "#444444", bg = "#000000" }, c = { fg = "#666666", bg = "#000000" } },
			  command  = { a = { fg = "#cccccc", bg = "#000000" }, b = { fg = "#444444", bg = "#000000" }, c = { fg = "#666666", bg = "#000000" } },
			  inactive = { a = { fg = "#333333", bg = "#000000" }, b = { fg = "#333333", bg = "#000000" }, c = { fg = "#333333", bg = "#000000" } },
		  }

		  require("lualine").setup({
			  options = {
				  theme = pure_black,
				  component_separators = { left = "", right = "" },
				  section_separators = { left = "", right = "" },
				  globalstatus = true,
			  },
			  sections = {
				  -- LATO SINISTRO: Modalità (MAIUSCOLA) + Simbolo + Nome file
				  lualine_a = {
					  { "mode" }, -- Rimosso il tolower(), ora usa il default in maiuscolo
					  { 
						  function() 
							  return " ⛩️"
							   -- 後  雷  雨  土  牛
						  end 
					  },
					  { "filename", path = 1, fmt = function(str) return "  " .. str end }
				  },
				  lualine_b = {},
				  lualine_c = {},

				  -- LATO DESTRA: Linguaggio (filetype) e posizione
				  lualine_x = {},
				  lualine_y = {},
				  lualine_z = { 
					  "filetype", 
					  { 
						  function()
							  local line = vim.fn.line(".")
							  local col = vim.fn.col(".")
							  return string.format("%3d:%-2d", line, col)
						  end 
					  }
				  },
			  },
		  })
	  end,
  }



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


  -- {
  --  "nvim-lualine/lualine.nvim",
  --  dependencies = {
  --   "nvim-tree/nvim-web-devicons",
  --  },
  --  opts = {
  --   options = {
  -- 	  theme = "auto",
  -- 	  icons_enabled = false,
  -- 	  section_separators = "",
  -- 	  component_separators = "",
  -- 	  globalstatus = true,
  --   },
  --
  --   sections = {
  -- 	  lualine_a = { "mode" },
  -- 	  lualine_b = { "branch" },
  -- 	  lualine_c = { "filename" },
  -- 	  lualine_x = {},
  -- 	  lualine_y = { "progress" },
  -- 	  lualine_z = { "location" },
  --   },
  --
  --   inactive_sections = {
  -- 	  lualine_a = {},
  -- 	  lualine_b = {},
  -- 	  lualine_c = { "filename" },
  -- 	  lualine_x = {},
  -- 	  lualine_y = {},
  -- 	  lualine_z = {},
  --   },
  --  },
  -- }

}
