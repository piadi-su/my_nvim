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

  {
    "ellisonleao/gruvbox.nvim",
    -- config = function()
    --   enable_transparency()
    -- end,
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
      priority = 1000,
      config = function()
	  vim.cmd.colorscheme("no-clown-fiesta")
      end
  },



  -- {
  --   "nvim-lualine/lualine.nvim",
  --   dependencies = {
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   opts = {
  --     theme = "auto",
  --   },
  -- },
}
