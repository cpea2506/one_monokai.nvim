local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    CratesNvimError = { fg = colors.red },
    CratesNvimLoading = { fg = colors.purple },
    CratesNvimNoMatch = { fg = colors.pink },
    CratesNvimPopupEnabled = { fg = colors.green },
    CratesNvimPopupFeature = { fg = colors.aqua },
    CratesNvimPopupPreRelease = { fg = colors.cyan },
    CratesNvimPopupTitle = { fg = colors.purple },
    CratesNvimPopupTransitive = { fg = colors.pink },
    CratesNvimPopupUrl = { fg = colors.aqua },
    CratesNvimPopupVersion = { fg = colors.green },
    CratesNvimPopupYanked = { fg = colors.pink },
    CratesNvimPreRelease = { fg = colors.cyan },
    CratesNvimUpgrade = { fg = colors.yellow },
    CratesNvimVersion = { fg = colors.green },
    CratesNvimYanked = { fg = colors.red },
}

return groups
