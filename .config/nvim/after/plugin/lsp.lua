local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


require('lspconfig').gopls.setup({
    cmd = {'gopls', '-remote=auto'},
    -- ...
    init_options = {
        gofumpt = true,
        staticcheck = true,
        memoryMode = "DegradeClosed",
    },
})

require('lspconfig').hls.setup({
    cmd = { "haskell-language-server-wrapper", "--lsp" },
    filetypes = { 'hs', 'haskell', 'lhaskell', 'cabal' },
    -- ...
    init_options = {
    },
})

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'ts_ls', 'pylsp', 'csharp_ls'},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  }
})
