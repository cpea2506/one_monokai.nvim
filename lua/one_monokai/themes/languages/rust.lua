return {
    get = function(colors)
        return {
            rustIdentifier = { fg = colors.aqua },
            rustKeyword = { fg = colors.pink },
            rustType = { fg = colors.aqua },
            rustSigil = { fg = colors.pink },
            rustSelf = { fg = colors.pink },
            rustLifetime = { fg = colors.pink },
            rustLet = { fg = colors.cyan },
            rustParamName = { fg = colors.orange, italic = true },
            rustModPath = { fg = colors.aqua },
        }
    end,
}
