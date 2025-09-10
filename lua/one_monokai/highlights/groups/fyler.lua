local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    FylerConfirmGreen = { fg = colors.green },
    FylerConfirmGrey = { fg = colors.dark_gray },
    FylerConfirmRed = { fg = colors.red },
    FylerConfirmYellow = { fg = colors.yellow },

    FylerFSDirectoryIcon = { fg = colors.yellow },
    FylerFSDirectoryName = { fg = colors.aqua },

    FylerFSFile = { fg = colors.fg },
    FylerFSLink = { fg = colors.pink, bold = true },

    FylerGitAdded = { fg = colors.green },
    FylerGitConflict = { fg = colors.red },
    FylerGitDeleted = { fg = colors.red },
    FylerGitIgnored = { link = "Comment" },
    FylerGitModified = { fg = colors.pink },
    FylerGitRenamed = { fg = colors.pink },
    FylerGitStaged = { fg = colors.green },
    FylerGitUnstaged = { fg = colors.pink },
    FylerGitUntracked = { fg = colors.orange },

    FylerIndentMarker = { link = "Whitespace" },
}

return groups
