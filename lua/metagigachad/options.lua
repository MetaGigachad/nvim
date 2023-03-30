local options = {
    fileencoding = 'utf-8',
    swapfile = false,
    showmode = false,

    -- Splits
    splitbelow = true,
    splitright = true,

    -- Indent
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,

    -- Line numbers
    number = true,
    relativenumber = true,
    signcolumn = 'yes',

    -- Completion pop-up size
    pumheight = 12,
    pumwidth = 60,

    -- Spell check
    spell = false,
    spelllang = 'en_us,ru',
}

for key, val in pairs(options) do
    vim.opt[key] = val
end
