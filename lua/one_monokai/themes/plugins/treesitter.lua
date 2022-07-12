return {
    get = function(colors)
        return {
            TSConstructor = { fg = colors.aqua },
            TSBoolean = { fg = colors.cyan },
            TSFuncBuiltin = { fg = colors.green },
            TSKeywordReturn = { fg = colors.pink },
            TSKeyword = { fg = colors.cyan },
            TSParameter = { fg = colors.orange, italic = true },
            TSVariableBuiltin = { fg = colors.pink },
            TSConstBuiltin = { fg = colors.aqua },
            TSKeywordFunction = { fg = colors.pink },
            TSTypeBuiltin = { fg = colors.aqua },
            TSType = { fg = colors.aqua },
        }
    end,
}
