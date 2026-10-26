vim.pack.add({
  'https://github.com/duxlabs-dev/base46',
  'https://github.com/nvim-lualine/lualine.nvim',
  'https://github.com/rafamadriz/friendly-snippets',
  'https://github.com/Saghen/blink.cmp',
  'https://github.com/Saghen/blink.lib',
  'https://github.com/nvim-tree/nvim-tree.lua',
  'https://github.com/windwp/nvim-autopairs',
  'https://github.com/neovim/nvim-lspconfig',
})

require('lualine').setup()
require("nvim-tree").setup()
require("nvim-autopairs").setup()

require('blink.cmp').setup({
  completion = {
    menu = { border = 'rounded' },
  },
  fuzzy = { implementation = 'lua' }
})
