vim.api.nvim_buf_set_option(0, 'tabstop', 2)
vim.api.nvim_buf_set_option(0, 'softtabstop', 2)
vim.api.nvim_buf_set_option(0, 'shiftwidth', 2)

vim.cmd [[silent! norm!zR]]
vim.keymap.set('n', '<Leader>cf', 'gggqG<C-o>', {})
