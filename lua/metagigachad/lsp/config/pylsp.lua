require('lspconfig').pylsp.setup {
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = { 'W391', 'E275' },
                    maxLineLength = 100,
                },
            },
        },
    },
}
