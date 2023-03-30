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
    },

    highlight = {
        enable = true,
        disable = { 'latex' },
    },
}

require('vim.treesitter.query').set_query(
    'html',
    'injections',
    [[
(((text) @text
  (#match? @text "[{].*}")) @injection.content
  (#set! injection.language "rust"))
]]
)
