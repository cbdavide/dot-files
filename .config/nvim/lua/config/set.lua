vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4       -- number of visual spaces per TAB
vim.opt.softtabstop = 4   -- number of spaces in tab when editing
vim.opt.shiftwidth = 4    -- number of spaces to use for autoindent
vim.opt.expandtab = true  -- tabs are space

vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"

vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " "

vim.env.PATH = vim.env.VIM_PATH or vim.env.PATH

-- Later versions for LanguageeTool break the plugin
-- https://github.com/rhysd/vim-grammarous/issues/110#issuecomment-1468495923
vim.g["grammarous#jar_url"] = 'https://www.languagetool.org/download/LanguageTool-5.9.zip'
