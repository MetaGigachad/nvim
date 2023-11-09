require('tokyonight').setup {
    on_highlights = function(hl, c)
        local prompt = '#2d3149'
        hl.TelescopeNormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
        hl.TelescopePromptNormal = {
            bg = prompt,
        }
        hl.TelescopePromptBorder = {
            bg = prompt,
            fg = prompt,
        }
        hl.TelescopePromptTitle = {
            bg = prompt,
            fg = prompt,
        }
        hl.TelescopePreviewTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
        hl.TelescopeResultsTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
    end,
}

require('catppuccin').setup {
    integrations = {
        telescope = false,
    },
    custom_highlights = function(C)
        return {
            -- Telescope
            TelescopeNormal = { link = 'NormalFloat' },
            TelescopeBorder = { link = 'FloatBorder' },
            TelescopeSelectionCaret = { fg = C.text, bg = C.surface0 },
            TelescopeSelection = {
                fg = O.transparent_background and C.pink or C.text,
                bg = O.transparent_background and C.none or C.surface0,
                style = { 'bold' },
            },
            TelescopeMatching = { fg = C.red },
            TelescopePromptPrefix = { bg = C.surface0 },
            TelescopePromptNormal = { bg = C.surface0 },
            TelescopeResultsNormal = { bg = C.mantle },
            TelescopePreviewNormal = { bg = C.mantle },
            TelescopePromptBorder = { bg = C.surface0 },
            TelescopeResultsBorder = { bg = C.mantle },
            TelescopePreviewBorder = { bg = C.mantle },
            TelescopePromptTitle = { fg = C.mantle, bg = C.pink },
            TelescopeResultsTitle = { fg = C.mantle, bg = C.lavender },
            TelescopePreviewTitle = { fg = C.mantle, bg = C.green },
            -- Winbar
            WinBar = { fg = C.pink, bold = true },
            WinBarNC = { fg = C.text, bold = true },
        }
    end,
}

vim.cmd.colorscheme 'catppuccin-latte'
