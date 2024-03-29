vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', "<leader>h", "<C-W><C-H>")

vim.keymap.set('n', "<leader>l", "<C-W><C-L>")
vim.keymap.set('n', "<leader>j", "<C-W><C-J>")
vim.keymap.set('n', "<leader>k", "<C-W><C-K>")

-- LSP errors in a quick list
vim.api.nvim_set_keymap(
    'n',
    '<space>q',
    '<cmd>lua vim.diagnostic.setqflist()<CR>',
    { noremap=true, silent=true, buffer=bufnr }
)
