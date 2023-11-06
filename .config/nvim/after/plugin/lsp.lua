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
