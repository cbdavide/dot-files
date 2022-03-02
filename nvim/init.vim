syntax on

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space

set clipboard+=unnamedplus

set smartcase
set smartindent

set nowrap

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch

set hidden

set number                   " show line number
set relativenumber

set showmatch                " highlight matching brace
set showcmd                  " shows command in the bottom bar

"" Status Line
set laststatus=2
set noshowmode

set colorcolumn=100


"" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-fugitive'
  Plug 'gruvbox-community/gruvbox'
  Plug 'sheerun/vim-polyglot'

  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'  
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

  Plug 'itchyny/lightline.vim'
  Plug 'tpope/vim-commentary'
  Plug 'dense-analysis/ale'
  Plug 'vim-test/vim-test'

  Plug 'neovim/nvim-lspconfig'
  Plug 'ThePrimeagen/vim-be-good'
call plug#end()

let mapleader = " "

let g:gruvbox_contrast_dark = 'hard'

let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead'
    \ },
    \ }

let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \}

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS = '--reverse'

let test#python#runner = 'pytest'
let test#strategy = "neovim"

lua require("conf")
"" Remaps

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>tn <cmd>TestNearest<cr>
nnoremap <leader>tf <cmd>TestFile<cr>
nnoremap <leader>ta <cmd>TestSuite<cr>
nnoremap <leader>tl <cmd>TestLast<cr>

""" LPS
nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>

nnoremap <leader>h <C-W><C-H> 
nnoremap <leader>l <C-W><C-L> 
nnoremap <leader>j <C-W><C-J> 
nnoremap <leader>k <C-W><C-K> 

colorscheme gruvbox
set background=dark
