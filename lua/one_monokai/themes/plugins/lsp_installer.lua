return {
    get = function(colors)
        return {
            LspInstallerGreen = { fg = colors.green },
            LspInstallerHeader = { fg = colors.light_black, bg = colors.cyan, bold = true },
            LspInstallerHeaderHelp = { fg = colors.light_black, bg = colors.yellow, bold = true },
            LspInstallerVaderSaber = { fg = colors.pink, bold = true },
            LspInstallerVersionCheckLoaderDone = { fg = colors.light_black, bg = colors.green, bold = true },
            LspInstallerOrange = { fg = colors.orange },
            LspInstallerHighlighted = { fg = colors.pink },
            LspInstallerLink = { fg = colors.aqua },
        }
    end,
}
