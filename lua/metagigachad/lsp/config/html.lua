local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').html.setup {
    init_options = {
        provideFormatter = false,
    },
    capabilities = capabilities,
}
