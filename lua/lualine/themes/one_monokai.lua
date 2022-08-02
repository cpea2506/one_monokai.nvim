local colors = require "one_monokai.colors"

local lualine = {
    normal = {
        a = { bg = colors.green, gui = "bold" },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
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
        a = { fg = colors.dark_gray, bg = colors.bg, gui = "bold" },
        b = { fg = colors.dark_gray, bg = colors.bg },
        c = { fg = colors.dark_gray, bg = colors.bg },
    },
}

return lualine
