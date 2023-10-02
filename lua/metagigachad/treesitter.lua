-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Better folds highlighting
-- local ftMap = {
--     org = 'indent',
-- }
-- require('ufo').setup {
--     open_fold_hl_timeout = 0,
--     provider_selector = function(bufnr, filetype, buftype) return ftMap[filetype] end,
-- }

require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'c',
        'cpp',
        'lua',
        'rust',
        'python',
        'html',
        'css',
        'json',
        'bash',
        'vim',
        'markdown',
        'latex',
        'org',
        'javascript',
        'typescript',
        'tsx',
        'nix',
        'svelte',
    },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'org' },
        disable = { 'latex' },
    },
}
