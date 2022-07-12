return {
    get = function(colors)
        return {
            jsFuncName = { fg = colors.green },
            jsThis = { fg = colors.pink },
            jsFunctionKey = { fg = colors.green },
            jsPrototype = { fg = colors.cyan },
            jsExceptions = { fg = colors.cyan },
            jsFutureKeys = { fg = colors.cyan },
            jsBuiltins = { fg = colors.cyan },
            jsArgsObj = { fg = colors.cyan },
            jsStatic = { fg = colors.cyan },
            jsSuper = { fg = colors.cyan },
            jsFuncArgRest = { fg = colors.purple, italic = true },
            jsFuncArgs = { fg = colors.orange, italic = true },
            jsStorageClass = { fg = colors.cyan },
            jsDocTags = { fg = colors.cyan, italic = true },
        }
    end,
}
