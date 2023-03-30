local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key
keymap('n', '<Space>', '', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' m'

-- [[
-- LEADER KEYMAPS
--
-- (b) Buffers:
-- * (f) find
--
-- (c) Code:
-- * (a) action
-- * (d) diagnostics
-- * (f) format
-- * (r) rename
--
-- (e) Editor:
-- * (c) commands
-- * (s) spell check toggle
--
-- (f) Files:
-- * (e) explore
-- * (f) find
-- * (g) grep
--
-- (g) Git:
-- * (f) files
--
-- (h) Nohlseacrch
--
-- (m) Local leader
--
-- (t) Terminal
-- ]]

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Map system clipboard to P and Y
keymap({ 'n', 'v', 'x' }, '<C-p>', '"+p', opts)
keymap('n', '<C-y><C-y>', '"+yy', opts)
keymap({ 'v', 'x' }, '<C-y>', '"+y', opts)

-- Buffer control mappings
keymap('n', '<A-n>', ':bn<CR>', opts)
keymap('n', '<A-N>', ':bp<CR>', opts)
keymap('n', '<A-c>', ':bdelete<CR>', opts)
keymap({ 'i', 't' }, '<A-n>', '<C-\\><C-N>:bn<CR>', opts)
keymap({ 'i', 't' }, '<A-N>', '<C-\\><C-N>:bp<CR>', opts)
keymap({ 'i', 't' }, '<A-c>', '<C-\\><C-N>:bdelete<CR>', opts)

-- Window navigation
keymap('n', '<A-h>', '<C-w>h', opts)
keymap('n', '<A-j>', '<C-w>j', opts)
keymap('n', '<A-k>', '<C-w>k', opts)
keymap('n', '<A-l>', '<C-w>l', opts)
keymap({ 'i', 't' }, '<A-h>', '<C-\\><C-N><C-w>h', opts)
keymap({ 'i', 't' }, '<A-j>', '<C-\\><C-N><C-w>j', opts)
keymap({ 'i', 't' }, '<A-k>', '<C-\\><C-N><C-w>k', opts)
keymap({ 'i', 't' }, '<A-l>', '<C-\\><C-N><C-w>l', opts)

-- Window controls
keymap('n', '<A-q>', '<C-w>q', opts)
keymap('n', '<A-s>', '<C-w>s:Ex<CR>', opts)
keymap('n', '<A-v>', '<C-w>v:Ex<CR>', opts)
keymap({ 'i', 't' }, '<A-q>', '<C-\\><C-N><C-w>q', opts)
keymap({ 'i', 't' }, '<A-s>', '<C-\\><C-N><C-w>s:Ex<CR>', opts)
keymap({ 'i', 't' }, '<A-v>', '<C-\\><C-N><C-w>v:Ex<CR>', opts)

-- Tab navigation
keymap('n', '<A-1>', ':1tabnext<CR>', opts)
keymap('n', '<A-2>', ':2tabnext<CR>', opts)
keymap('n', '<A-3>', ':3tabnext<CR>', opts)
keymap('n', '<A-4>', ':4tabnext<CR>', opts)
keymap({ 'i', 't' }, '<A-1>', '<C-\\><C-N>:1tabnext<CR>', opts)
keymap({ 'i', 't' }, '<A-2>', '<C-\\><C-N>:2tabnext<CR>', opts)
keymap({ 'i', 't' }, '<A-3>', '<C-\\><C-N>:3tabnext<CR>', opts)
keymap({ 'i', 't' }, '<A-4>', '<C-\\><C-N>:4tabnext<CR>', opts)

-- Tab controls
keymap('n', '<A-t>', ':$tabnew<CR>:Ex<CR>', opts)
keymap({ 'i', 't' }, '<A-t>', '<C-\\><C-N>:$tabnew<CR>:Ex<CR>', opts)
keymap('n', '<A-w>', ':tabclose<CR>', opts)
keymap({ 'i', 't' }, '<A-w>', '<C-\\><C-N>:tabclose<CR>', opts)

-- Vertical movements
keymap('n', '<C-d>', '<C-d>zz', opts)
keymap('n', '<C-u>', '<C-u>zz', opts)
keymap('n', 'n', 'nzzzv', opts)
keymap('n', 'N', 'Nzzzv', opts)

-- Terminal mappings
keymap('t', '<Esc>', '<C-\\><C-N>', opts)
keymap('n', '<leader>t', ':terminal<CR>i', opts)

-- Utils
keymap('n', '<leader>h', ':nohlsearch<CR>', opts)
keymap('n', '<leader>es', ':set spell!<CR>', opts)

-- Command mode unmap
keymap('n', 'q:', '', opts)

-- Explore
keymap('n', '<leader>fe', ':Ex<CR>', opts)

-- LSP
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        keymap('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
        keymap('n', 'gl', vim.diagnostic.open_float, { buffer = args.buf })
        keymap('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
        keymap('n', 'gD', vim.lsp.buf.declaration, { buffer = args.buf })
        keymap('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = args.buf })
        keymap('n', '<leader>cf', vim.lsp.buf.format, { buffer = args.buf })
        keymap('n', '<leader>cr', vim.lsp.buf.rename, { buffer = args.buf })
    end,
})

-- Telescope
local telescope = require 'telescope.builtin'
keymap('n', '<leader>bf', telescope.buffers, opts)
keymap('n', '<leader>cd', telescope.diagnostics, opts)
keymap('n', '<leader>ec', telescope.commands, opts)
keymap('n', '<leader>ff', telescope.find_files, opts)
keymap('n', '<leader>fg', telescope.live_grep, opts)
keymap('n', '<leader>gf', telescope.git_files, opts)

-- Harpoon
local harpoon_mark = require 'harpoon.mark'
local harpoon_ui = require 'harpoon.ui'
keymap('n', '<M-a>', harpoon_mark.add_file, opts)
keymap('n', '<M-0>', harpoon_ui.toggle_quick_menu, opts)
keymap('n', '<M-7>', function()
    harpoon_ui.nav_file(1)
end, opts)
keymap('n', '<M-8>', function()
    harpoon_ui.nav_file(2)
end, opts)
keymap('n', '<M-9>', function()
    harpoon_ui.nav_file(3)
end, opts)
keymap({ 'i', 't' }, '<M-a>', harpoon_mark.add_file, opts)
keymap({ 'i', 't' }, '<M-0>', harpoon_ui.toggle_quick_menu, opts)
keymap({ 'i', 't' }, '<M-7>', function()
    harpoon_ui.nav_file(1)
end, opts)
keymap({ 'i', 't' }, '<M-8>', function()
    harpoon_ui.nav_file(2)
end, opts)
keymap({ 'i', 't' }, '<M-9>', function()
    harpoon_ui.nav_file(3)
end, opts)
