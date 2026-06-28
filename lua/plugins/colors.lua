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
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   -- config = function()
  --   --   enable_transparency()
  --   -- end,
  -- },

  {
	  "ellisonleao/gruvbox.nvim",
	  priority = 1000,
	  config = function()
		  require("gruvbox").setup({
			  contrast = "hard",
		  })
	  end,
  },


  {
    "nyoom-engineering/oxocarbon.nvim",
	--    config = function()
	-- enable_transparency()
	--    end
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
	  "catppuccin/nvim",
	  name = "catppuccin",
	  priority = 1000,
	  config = function()
		  require("catppuccin").setup({
			  flavour = "mocha", -- dark theme
			  transparent_background = false,
			  integrations = {
				  lualine = true,
			  },
		  })

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
