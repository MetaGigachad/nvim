require('lspconfig').rust_analyzer.setup {
    settings = {
        ['rust-analyzer'] = {
            checkOnSave = {
                enable = true,
            },
        },
    },
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
}
