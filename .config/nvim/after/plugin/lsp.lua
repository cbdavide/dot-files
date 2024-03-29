local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').gopls.setup({
    capabilities = lsp_capabilities,
    flags = {
        -- Don't spam LSP with changes. Wait a second between each.
        debounce_text_changes = 1000,
    },
    cmd = {
        '/opt/go/path/bin/gopls',
        '-remote=auto',
        '-logfile',
        '/home/user/nvim-gopls.log',
        '-rpc.trace'
    },
    init_options = {
        analyses = {
            shadow = true,
            unusedparams = true,
        },
        gofumpt = true,
        staticcheck = true,
        semanticTokens = true,
        vulncheck = 'Off',
        importShortcut = 'Definition',
        directoryFilters = {
            '-**/bazel-out',
            '-**/bazel-go-code',
            '-**/bazel-pkgdrv',
            '-**/bazel-testlogs',
        },
    },
})
