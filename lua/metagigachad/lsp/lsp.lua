local servers = {
    'lua_ls',
    'rust_analyzer',
    'texlab',
    'clangd',
    -- "pyright",
    'pylsp',
    'html',
    'cssls',
}

-- Install servers
require('mason').setup()
require('mason-lspconfig').setup {
    ensure_installed = servers,
}

-- Load configurations
local prefix = 'metagigachad.lsp.config.'
for _, server in ipairs(servers) do
    require(prefix .. server)
end
