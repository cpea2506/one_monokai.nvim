local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    CmpItemAbbrDeprecated = { fg = colors.light_gray, strikethrough = true },
    CmpItemAbbrMatch = { fg = colors.aqua },
    CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
    CmpItemKindClass = { fg = colors.pink },
    CmpItemKindConstant = { fg = colors.cyan },
    CmpItemKindConstructor = { link = "@constructor" },
    CmpItemKindEnum = { fg = colors.cyan },
    CmpItemKindEnumMember = { fg = colors.yellow },
    CmpItemKindEvent = { fg = colors.yellow },
    CmpItemKindField = { fg = colors.yellow },
    CmpItemKindFile = { fg = colors.white },
    CmpItemKindFolder = { fg = colors.yellow },
    CmpItemKindFunction = { link = "Function" },
    CmpItemKindInterface = { fg = colors.pink },
    CmpItemKindKeyword = { fg = colors.white },
    CmpItemKindMethod = { link = "Function" },
    CmpItemKindModule = { fg = colors.pink },
    CmpItemKindOperator = { link = "Operator" },
    CmpItemKindProperty = { fg = colors.yellow },
    CmpItemKindStruct = { fg = colors.pink },
    CmpItemKindText = { fg = colors.white },
    CmpItemKindUnit = { fg = colors.orange },
    CmpItemKindValue = { fg = colors.white },
    CmpItemKindVariable = { fg = colors.cyan },
}

return groups
