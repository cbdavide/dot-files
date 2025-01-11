return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end,
        lazy = false, -- load during startup
        priority = 1000, --load before other plugins
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {'nvim-lua/plenary.nvim'},
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v4.x",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            -- LSP Support
            "neovim/nvim-lspconfig",

            -- Autocompletion
            "hrsh7th/nvim-cmp",         -- Required
            "hrsh7th/cmp-nvim-lsp",     -- Required
            "hrsh7th/cmp-buffer",       -- Optional
            "hrsh7th/cmp-path",         -- Optional
            "saadparwaiz1/cmp_luasnip", -- Optional
            "hrsh7th/cmp-nvim-lua",     -- Optional

            -- Snippets
            "L3MON4D3/LuaSnip",             -- Required
            "rafamadriz/friendly-snippets", -- Optional
        },
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    },
    {
        "j-hui/fidget.nvim",
        tag = "v1.5.0",
    },
    {
        "mrcjkb/haskell-tools.nvim",
        version = '^4', -- Recommended
        lazy = false, -- This plugin is already lazy
    },
    {"mbbill/undotree"},
    {"tpope/vim-fugitive"},
    {"ThePrimeagen/harpoon"},
    {"tpope/vim-commentary"},
    {"mfussenegger/nvim-dap"},
    {"theHamsta/nvim-dap-virtual-text"},
    {"nvim-telescope/telescope-dap.nvim"},
}
