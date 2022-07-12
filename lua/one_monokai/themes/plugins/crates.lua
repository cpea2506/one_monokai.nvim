return {
    get = function(colors)
        return {
            CratesNvimNoMatch = { fg = colors.pink },
            CratesNvimError = { fg = colors.git.del },
            CratesNvimUpgrade = { fg = colors.yellow },
            CratesNvimVersion = { fg = colors.green },
            CratesNvimPreRelease = { fg = colors.cyan },
            CratesNvimYanked = { fg = colors.git.del },
            CratesNvimLoading = { fg = colors.purple },
            CratesNvimPopupTitle = { fg = colors.purple },
            CratesNvimPopupVersion = { fg = colors.green },
            CratesNvimPopupPreRelease = { fg = colors.cyan },
            CratesNvimPopupYanked = { fg = colors.pink },
            CratesNvimPopupFeature = { fg = colors.aqua },
            CratesNvimPopupEnabled = { fg = colors.green },
            CratesNvimPopupTransitive = { fg = colors.pink },
            CratesNvimPopupUrl = { fg = colors.aqua },
        }
    end,
}
