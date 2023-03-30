-- Map system cliboard to P and Y
vim.keymap.set('n', '<C-p>', '"+p', {})
vim.keymap.set('v', '<C-p>', '"+p', {})
vim.keymap.set('n', '<C-y><C-y>', '"+yy', {})
vim.keymap.set('v', '<C-y>', '"+y', {})
