local servers = {
    'lua_ls',
    'texlab',
    'clangd',
    'pyright',
    -- 'pylsp',
    'html',
    'cssls',
    'tsserver',
    -- 'nil_ls',
    'svelte',
    'tailwindcss',
    'cmake',
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
