local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    FzfLuaNormal = { link = "NormalFloat" },
    FzfLuaBorder = { link = "FloatBorder" },
    FzfLuaTitle = { fg = colors.aqua },
    FzfLuaFzfPointer = { fg = colors.fg, bg = colors.dark_gray },
    FzfLuaFzfCursorLine = { link = "Visual" },
    FzfLuaFzfGutter = { link = "Visual" },
    FzfLuaFzfInfo = { fg = colors.green },
    FzfLuaFzfPrompt = { fg = colors.pink },
}

return groups
