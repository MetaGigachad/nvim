local rt = require 'rust-tools'

rt.setup {
    server = {
        on_attach = function(_, bufnr) vim.keymap.set('n', 'K', rt.hover_actions.hover_actions, { buffer = bufnr }) end,
        checkOnSave = {
            enable = true,
        },
        standalone = false,
    },
    tools = {
        hover_actions = {
            border = 'none',
        },
    },
}
