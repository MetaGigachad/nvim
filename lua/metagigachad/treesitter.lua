require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "c",
        "cpp",
        "lua",
        "rust",
        "python",
        "html",
        "css",
        "json",
        "bash",
        "vim",
        "markdown",
        "latex",
    },

    highlight = {
        enable = true,
        disable = {"latex"},
    }
}
