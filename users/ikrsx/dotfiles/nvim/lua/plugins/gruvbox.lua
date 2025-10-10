-- Gruvbox Theme
return { 
  "ellisonleao/gruvbox.nvim", 
  priority = 1000 , 
  config = function() 
    require("gruvbox").setup({
      contrast = "hard",
    }) -- configure the theme
    vim.cmd("colorscheme gruvbox") -- load theme
    vim.cmd("highlight NonText guifg=bg") -- set the color of non text characters
  end, 
}
