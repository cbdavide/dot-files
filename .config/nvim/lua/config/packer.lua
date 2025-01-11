-- Check installation guide at https://github.com/wbthomason/packer.nvim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'



end)
