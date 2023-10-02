local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Map system cliboard to P and Y
keymap({ 'n', 'v', 'x' }, '<C-p>', '"+p', opts)
keymap('n', '<C-y><C-y>', '"+yy', opts)
keymap({ 'v', 'x' }, '<C-y>', '"+y', opts)
keymap('v', '<C-x>', '"+x', opts)
