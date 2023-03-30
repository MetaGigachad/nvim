require('lspconfig').texlab.setup {
    settings = {
        texlab = {
            auxDirectory = '~/.local/share/latex/aux',
            bibtexFormatter = 'texlab',
            build = {
                args = { '-interaction=nonstopmode', '-synctex=1', '%f' },
                executable = 'latexmk',
                forwardSearchAfter = false,
                onSave = false,
            },
            chktex = {
                onEdit = false,
                onOpenAndSave = true,
            },
            diagnosticsDelay = 300,
            formatterLineLength = 80,
            forwardSearch = {
                args = {},
            },
            latexFormatter = 'latexindent',
            latexindent = {
                modifyLineBreaks = true,
            },
        },
    },
}
