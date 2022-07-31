local colors = require "one_monokai.colors"

local lualine = {
    normal = {
        a = { bg = colors.green, gui = "bold" },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
    },
    insert = {
        a = { fg = colors.dark_black, bg = colors.yellow, gui = "bold" },
    },
    visual = {
        a = { fg = colors.dark_black, bg = colors.purple, gui = "bold" },
    },
    command = {
        a = { fg = colors.dark_black, bg = colors.aqua, gui = "bold" },
    },
    replace = {
        a = { fg = colors.dark_black, bg = colors.pink, gui = "bold" },
    },
    inactive = {
        a = { fg = colors.gray, bg = colors.bg, gui = "bold" },
        b = { fg = colors.gray, bg = colors.bg },
        c = { fg = colors.gray, bg = colors.bg },
    },
}

return lualine
