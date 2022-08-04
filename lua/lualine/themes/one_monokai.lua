local colors = require "one_monokai.colors"

local lualine = {
    normal = {
        a = { fg = colors.dark_blue, bg = colors.green, gui = "bold" },
        b = { fg = colors.fg, bg = colors.vulcan },
        c = { fg = colors.fg, bg = colors.black },
    },
    insert = {
        a = { fg = colors.dark_blue, bg = colors.yellow, gui = "bold" },
    },
    visual = {
        a = { fg = colors.dark_blue, bg = colors.purple, gui = "bold" },
    },
    command = {
        a = { fg = colors.dark_blue, bg = colors.aqua, gui = "bold" },
    },
    replace = {
        a = { fg = colors.dark_blue, bg = colors.pink, gui = "bold" },
    },
    inactive = {
        a = { fg = colors.fg, bg = colors.black },
        b = { fg = colors.fg, bg = colors.black, gui = "bold" },
        c = { fg = colors.fg, bg = colors.black },
    },
}

return lualine
