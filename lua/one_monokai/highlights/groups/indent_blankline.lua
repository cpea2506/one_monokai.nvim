local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    IndentBlanklineIndent1 = { fg = colors.pink, nocombine = true },
    IndentBlanklineIndent2 = { fg = colors.yellow, nocombine = true },
    IndentBlanklineIndent3 = { fg = colors.green, nocombine = true },
    IndentBlanklineIndent4 = { fg = colors.cyan, nocombine = true },
    IndentBlanklineIndent5 = { fg = colors.aqua, nocombine = true },
    IndentBlanklineIndent6 = { fg = colors.purple, nocombine = true },
}

return groups
