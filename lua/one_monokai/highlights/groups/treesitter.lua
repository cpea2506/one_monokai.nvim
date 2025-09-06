local colors = require "one_monokai.colors"
local config = require "one_monokai.config"

---@type one_monokai.highlights.groups
local groups = {
    ["@variable"] = { fg = colors.fg },
    ["@variable.builtin"] = { fg = colors.pink },
    ["@variable.member"] = { link = "Identifier" },
    ["@variable.parameter"] = { fg = colors.orange, italic = config.italics },
    ["@variable.parameter.builtin"] = { link = "@variable.parameter" },

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = colors.aqua },
    ["@constant.macro"] = { link = "Define" },

    ["@module"] = { link = "Include" },
    ["@module.builtin"] = { link = "@module" },
    ["@label"] = { link = "Label" },

    ["@string"] = { link = "String" },
    ["@string.documentation"] = { fg = colors.cyan },
    ["@string.regexp"] = { link = "String" },
    ["@string.escape"] = { link = "SpecialChar" },
    ["@string.special"] = { link = "Special" },
    ["@string.special.symbol"] = { link = "Identifier" },
    ["@string.special.url"] = { fg = colors.aqua, undercurl = true },
    ["@string.special.path"] = { fg = colors.aqua, undercurl = true },

    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },

    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },

    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = colors.pink },
    ["@type.definition"] = { link = "Typedef" },

    ["@attribute"] = { link = "Type" },
    ["@attribute.bultin"] = { link = "@attribute" },
    ["@property"] = { link = "Identifier" },

    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Function" },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Macro" },

    ["@function.method"] = { link = "Function" },
    ["@function.method.call"] = { link = "Function" },

    ["@constructor"] = { fg = colors.aqua },
    ["@operator"] = { link = "Operator" },

    ["@keyword"] = { link = "Keyword" },
    ["@keyword.coroutine"] = { link = "Keyword" },
    ["@keyword.function"] = { fg = colors.pink },
    ["@keyword.operator"] = { link = "Operator" },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.type"] = { link = "Type" },
    ["@keyword.modifier"] = { fg = colors.pink },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.return"] = { fg = colors.pink },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.exception"] = { link = "Exception" },

    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.conditional.ternary"] = { link = "Conditional" },

    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.directive.define"] = { link = "@keyword.directive" },

    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { link = "Delimiter" },
    ["@punctuation.special"] = { link = "Delimiter" },

    ["@comment"] = { link = "Comment" },
    ["@comment.error"] = { link = "ErrorMsg" },
    ["@comment.hint"] = { link = "SpecialComment" },
    ["@comment.todo"] = { link = "Todo" },
    ["@comment.warning"] = { link = "WarningMsg" },

    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.heading"] = { link = "Title" },

    ["@markup.math"] = { link = "Special" },

    ["@markup.link"] = { link = "Constant" },
    ["@markup.link.label"] = { link = "SpecialChar" },
    ["@markup.link.url"] = { fg = colors.aqua, undercurl = true },

    ["@markup.raw"] = { link = "String" },

    ["@markup.list"] = { link = "Delimiter" },
    ["@markup.list.checked"] = { fg = colors.green },
    ["@markup.list.unchecked"] = { fg = colors.pink },

    ["@tag"] = { link = "Label" },
    ["@tag.attribute"] = { link = "Identifier" },
    ["@tag.delimiter"] = { link = "Delimiter" },

    ["@none"] = {},

    TreesitterContext = { bg = config.transparent and colors.bg:lighten(0.85) or colors.bg:darken(0.8) },
}

return groups
