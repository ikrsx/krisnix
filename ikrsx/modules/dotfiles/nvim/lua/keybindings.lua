vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>t", ":terminal<CR>")
vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>")
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>")
vim.keymap.set("n", "<leader>fb", function()
  vim.lsp.buf.format()
end)
vim.keymap.set("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end)
