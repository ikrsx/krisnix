-- colorscheme
return {
  {
    -- "folke/tokyonight.nvim",
    -- config = function() 
    --   vim.cmd[[colorscheme tokyonight]]
    --   vim.cmd("highlight NonText guifg=bg")
    -- end,
  },

  {
    "ellisonleao/gruvbox.nvim",
    config = function() 
      require("gruvbox").setup({
        contrast = "hard",
      })
      vim.cmd("colorscheme gruvbox")
      vim.cmd("highlight NonText guifg=bg")
    end,
  },

	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
}
