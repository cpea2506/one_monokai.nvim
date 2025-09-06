local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    NvimTreeBookmark = { fg = colors.yellow },
    NvimTreeEmptyFolderName = { link = "Directory" },
    NvimTreeExecFile = { fg = colors.yellow, bold = true },
    NvimTreeFolderIcon = { fg = colors.yellow },
    NvimTreeFolderName = { link = "Directory" },
    NvimTreeGitDeleted = { fg = colors.red },
    NvimTreeGitDirty = { fg = colors.pink },
    NvimTreeGitIgnored = { link = "Comment" },
    NvimTreeGitMerge = { fg = colors.purple },
    NvimTreeGitNew = { fg = colors.green },
    NvimTreeGitRenamed = { fg = colors.pink },
    NvimTreeGitStaged = { fg = colors.green },
    NvimTreeImageFile = { fg = colors.purple, bold = true },
    NvimTreeIndentMarker = { fg = colors.light_gray },
    NvimTreeLiveFilterPrefix = { fg = colors.pink, bold = true },
    NvimTreeLiveFilterValue = { bold = true },
    NvimTreeOpenedFile = { fg = colors.yellow, bold = true },
    NvimTreeOpenedFolderName = { link = "Directory" },
    NvimTreeRootFolder = { fg = colors.pink },
    NvimTreeSpecialFile = { fg = colors.green, bold = true, underline = true },
    NvimTreeSymlink = { fg = colors.pink, bold = true },
    NvimTreeWindowPicker = { fg = colors.white, bg = colors.aqua, bold = true },
}

return groups
