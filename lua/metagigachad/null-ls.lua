local null_ls = require 'null-ls'

null_ls.setup {
    sources = {
        -- null_ls.builtins.completion.spell,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.diagnostics.selene,
        -- null_ls.builtins.formatting.latexindent,
        -- null_ls.builtins.diagnostics.flake8,
        -- null_ls.builtins.formatting.autoflake,
        null_ls.builtins.formatting.autopep8.with {
            extra_args = { '--max-line-length', '90' },
        },
        -- null_ls.builtins.formatting.black.with {
        --     extra_args = { '--line-length', '79' },
        -- },
        null_ls.builtins.formatting.nixfmt,
    },
}
