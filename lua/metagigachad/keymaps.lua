M = {}
local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set

-- Remap space as leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " m"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Map system clipboard to P and Y
keymap("n", "<C-p>", "\"+p", opts)
keymap("v", "<C-p>", "\"+p", opts)
keymap("x", "<C-p>", "\"+p", opts)
keymap("n", "<C-y><C-y>", "\"+yy", opts)
keymap("v", "<C-y>", "\"+y", opts)
keymap("x", "<C-y>", "\"+y", opts)

-- Vertical movements
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Buffer control mappings
keymap("n", "<leader>bd", ":bdelete<CR>", opts)
keymap("n", "<leader>bn", ":bn<CR>", opts)
keymap("n", "<leader>bp", ":bp<CR>", opts)

-- Explore
keymap("n", "<leader>e", ":Ex<CR>", opts)

-- LSP
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        keymap('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
        keymap('n', '<leader>lf', vim.lsp.buf.format, { buffer = args.buf })
        keymap('n', '<leader>r', vim.lsp.buf.rename, { buffer = args.buf })
        keymap('n', '<leader>a', vim.lsp.buf.code_action, { buffer = args.buf })
        keymap('n', 'gl', vim.diagnostic.open_float, { buffer = args.buf })
        keymap('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
        keymap('n', 'gD', vim.lsp.buf.declaration, { buffer = args.buf })
    end,
})

-- Telescope
local telescope = require("telescope.builtin")
keymap("n", "<leader>ff", telescope.find_files, opts)
keymap("n", "<leader>fp", telescope.git_files, opts)
keymap("n", "<leader>fg", telescope.live_grep, opts)
keymap("n", "<leader>fb", telescope.buffers, opts)
keymap("n", "<leader>ld", telescope.diagnostics, opts)

return M
