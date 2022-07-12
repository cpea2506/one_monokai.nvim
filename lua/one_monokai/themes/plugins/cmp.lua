return {
    get = function(colors)
        return {
            CmpItemAbbrMatch = { fg = colors.aqua },
            CmpItemKindStruct = { fg = colors.pink },
            CmpItemKindEnum = { fg = colors.pink },
            CmpItemKindClass = { fg = colors.pink },
            CmpItemKindInterface = { fg = colors.pink },
            CmpItemKindValue = { fg = colors.git.change },
            CmpItemKindKeyword = { fg = colors.git.change },
            CmpItemKindText = { fg = colors.git.change },
            CmpItemKindProperty = { fg = colors.yellow },
            CmpItemKindMethod = { fg = colors.yellow },
            CmpItemKindField = { fg = colors.yellow },
            CmpItemKindModule = { fg = colors.yellow },
            CmpItemKindEnumMember = { fg = colors.yellow },
            CmpItemKindVariable = { fg = colors.cyan },
            CmpItemKindConstant = { fg = colors.cyan },
            CmpItemKindFunction = { fg = colors.green },
            CmpItemAbbrDeprecated = { fg = colors.light_gray, strikethrough = true },
        }
    end,
}
