local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    FylerNormal = { link = "Normal" },
    FylerFloat = { link = "NormalFloat" },
    FylerFloatBorder = { link = "FloatBorder" },
    FylerFloatTitle = { link = "FloatTitle" },
    FylerIndentGuide = { link = "Whitespace" },

    FylerDirectoryIcon = { fg = colors.yellow },
    FylerDirectoryName = { fg = colors.aqua },

    FylerGitConflict = { fg = colors.red },
    FylerGitDeleted = { fg = colors.red },
    FylerGitIgnored = { link = "Comment" },
    FylerGitRenamed = { fg = colors.pink },
    FylerGitStaged = { fg = colors.green },
    FylerGitModified = { fg = colors.pink },
    FylerGitUntracked = { fg = colors.orange },
}

return groups
