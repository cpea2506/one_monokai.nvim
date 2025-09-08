local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    BlinkCmpDocCursorLine = { link = "PmenuSel" },
    BlinkCmpDocBorder = { link = "FloatBorder" },
    BlinkCmpFloatBorder = { link = "FloatBorder" },
    BlinkCmpLabelDeprecated = { fg = colors.light_gray, strikethrough = true },
    BlinkCmpLabelMatch = { fg = colors.aqua },
    BlinkCmpDocSeparator = { fg = colors.pink },

    BlinkCmpKindClass = { fg = colors.pink },
    BlinkCmpKindConstant = { fg = colors.cyan },
    BlinkCmpKindConstructor = { link = "@constructor" },
    BlinkCmpKindEnum = { fg = colors.cyan },
    BlinkCmpKindEnumMember = { fg = colors.yellow },
    BlinkCmpKindEvent = { fg = colors.yellow },
    BlinkCmpKindField = { fg = colors.yellow },
    BlinkCmpKindFile = { fg = colors.white },
    BlinkCmpKindFolder = { fg = colors.yellow },
    BlinkCmpKindFunction = { link = "Function" },
    BlinkCmpKindInterface = { fg = colors.pink },
    BlinkCmpKindKeyword = { fg = colors.white },
    BlinkCmpKindMethod = { link = "Function" },
    BlinkCmpKindModule = { fg = colors.pink },
    BlinkCmpKindOperator = { link = "Operator" },
    BlinkCmpKindProperty = { fg = colors.yellow },
    BlinkCmpKindStruct = { fg = colors.pink },
    BlinkCmpKindText = { fg = colors.white },
    BlinkCmpKindUnit = { fg = colors.orange },
    BlinkCmpKindValue = { fg = colors.white },
    BlinkCmpKindVariable = { fg = colors.cyan },
}

return groups
