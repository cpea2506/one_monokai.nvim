local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    NavicIconsArray = { link = "Type" },
    NavicIconsBoolean = { link = "Boolean" },
    NavicIconsClass = { link = "CmpItemKindClass" },
    NavicIconsConstant = { link = "CmpItemKindConstant" },
    NavicIconsConstructor = { link = "CmpItemKindConstructor" },
    NavicIconsEnum = { link = "CmpItemKindEnum" },
    NavicIconsEnumMember = { link = "CmpItemKindEnumMember" },
    NavicIconsEvent = { link = "CmpItemKindEvent" },
    NavicIconsField = { link = "CmpItemKindField" },
    NavicIconsFile = { link = "CmpItemKindFile" },
    NavicIconsFunction = { link = "CmpItemKindFunction" },
    NavicIconsInterface = { link = "CmpItemKindInterface" },
    NavicIconsKey = { link = "CmpItemKindValue" },
    NavicIconsMethod = { link = "CmpItemKindMethod" },
    NavicIconsModule = { link = "CmpItemKindModule" },
    NavicIconsNamespace = { link = "CmpItemKindModule" },
    NavicIconsNull = { link = "Constant" },
    NavicIconsNumber = { link = "Number" },
    NavicIconsObject = { link = "CmpItemKindProperty" },
    NavicIconsOperator = { link = "CmpItemKindOperator" },
    NavicIconsPackage = { link = "CmpItemKindModule" },
    NavicIconsProperty = { link = "CmpItemKindProperty" },
    NavicIconsString = { link = "String" },
    NavicIconsStruct = { link = "CmpItemKindStruct" },
    NavicIconsTypeParameter = { link = "CmpItemKindTypeParameter" },
    NavicIconsVariable = { link = "CmpItemKindVariable" },
    NavicSeparator = { fg = colors.aqua },
    NavicText = { link = "Normal" },
}

return groups
