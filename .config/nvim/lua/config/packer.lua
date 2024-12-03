-- Check installation guide at https://github.com/wbthomason/packer.nvim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
          'nvim-telescope/telescope.nvim', tag = '0.1.x',
          requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
          require("rose-pine").setup()
          vim.cmd('colorscheme rose-pine')
      end
  })

  use('tpope/vim-commentary')
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
          'VonHeikemen/lsp-zero.nvim',
          branch = 'v3.x',
          requires = {
                  {'williamboman/mason.nvim'},
                  {'williamboman/mason-lspconfig.nvim'},
                  -- LSP Support
                  {'neovim/nvim-lspconfig'},             -- Required

                  -- Autocompletion
                  {'hrsh7th/nvim-cmp'},         -- Required
                  {'hrsh7th/cmp-nvim-lsp'},     -- Required
                  {'hrsh7th/cmp-buffer'},       -- Optional
                  {'hrsh7th/cmp-path'},         -- Optional
                  {'saadparwaiz1/cmp_luasnip'}, -- Optional
                  {'hrsh7th/cmp-nvim-lua'},     -- Optional

                  -- Snippets
                  {'L3MON4D3/LuaSnip'},             -- Required
                  {'rafamadriz/friendly-snippets'}, -- Optional
          }
  }

  use("ThePrimeagen/harpoon")

  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'

  use {
      'j-hui/fidget.nvim',
      tag = 'v1.2.0',
      config = function()
        require("fidget").setup {
          -- options
        }
      end,
  }

  use 'rhysd/vim-grammarous'

end)
