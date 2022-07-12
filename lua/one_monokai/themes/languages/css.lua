return {
    get = function(colors)
        return {
            cssProp = { fg = colors.yellow },
            cssUIAttr = { fg = colors.yellow },
            cssFunctionName = { fg = colors.cyan },
            cssColor = { fg = colors.purple },
            cssPseudoClassId = { fg = colors.purple },
            cssClassName = { fg = colors.green },
            cssValueLength = { fg = colors.purple },
            cssCommonAttr = { fg = colors.pink },
            cssBraces = { fg = colors.fg },
            cssClassNameDot = { fg = colors.pink },
            cssURL = { fg = colors.orange, underline = true, italic = true },
        }
    end,
}
