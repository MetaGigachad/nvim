if vim.g.vscode then
    require 'metagigachad.vscode.keymaps'
else
    require 'metagigachad.packer'
    require 'metagigachad.bufferline'
    require 'metagigachad.cmp'
    require 'metagigachad.lsp.lsp'
    require 'metagigachad.null-ls'
    require 'metagigachad.lsp.inlay_hints'
    require 'metagigachad.colorizer'
    require 'metagigachad.treesitter'
    require 'metagigachad.comment'
    require 'metagigachad.rust-tools'
    require 'metagigachad.orgmode'
    require 'metagigachad.latex'
    require 'metagigachad.git'
    require 'metagigachad.lualine'
    require 'metagigachad.telescope'
    require 'metagigachad.colorscheme'
    require 'metagigachad.keymaps'
    require 'metagigachad.options'
end
