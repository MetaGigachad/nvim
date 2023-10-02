require('lspconfig').pyright.setup {
    settings = {
        python = {
            analysis = {
                useLibraryCodeForTypes = true,
            },
        },
    },
}
