require('telescope').setup {
    defaults = {
        -- borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
    },
    pickers = {
        -- find_files = {
        --     border = false,
        --     theme = 'ivy',
        -- },
    },
    extensions = {
        file_browser = {
            borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
            hijack_netrw = true,
        },
    },
}

require('telescope').load_extension 'file_browser'
