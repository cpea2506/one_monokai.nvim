local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    MasonError = { fg = colors.red },
    MasonHeader = { fg = colors.dark_green, bg = colors.cyan, bold = true },
    MasonHeaderSecondary = { fg = colors.dark_green, bg = colors.yellow, bold = true },
    MasonHeading = { fg = colors.white, bold = true },
    MasonHighlight = { fg = colors.aqua },
    MasonHighlightBlock = { fg = colors.dark_blue, bg = colors.cyan },
    MasonHighlightBlockBold = { fg = colors.dark_blue, bg = colors.cyan, bold = true },
    MasonHighlightBlockBoldSecondary = { fg = colors.dark_blue, bg = colors.yellow, bold = true },
    MasonHighlightBlockSecondary = { fg = colors.dark_blue, bg = colors.yellow },
    MasonHighlightSecondary = { fg = colors.yellow },
    MasonLink = { fg = colors.aqua },
    MasonMuted = { fg = colors.pink },
    MasonMutedBlock = { fg = colors.dark_blue, bg = colors.light_gray },
    MasonMutedBlockBold = { fg = colors.dark_blue, bg = colors.light_gray, bold = true },
}

return groups
