local C = require('catppuccin.palettes').get_palette()
-- local col = '#A3ACE6'
-- local colfg = C.mantle
local col = C.mantle
local colfg = C.text

local catppuccin = {}

catppuccin.normal = {
    a = { bg = col, fg = C.pink, gui = 'bold' },
    b = { bg = col, fg = colfg, gui = 'bold' },
    c = { bg = col, fg = colfg, gui = 'bold' },
}
catppuccin.inactive = catppuccin.normal

return catppuccin
