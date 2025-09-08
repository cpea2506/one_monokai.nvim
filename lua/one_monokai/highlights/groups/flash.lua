local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    FlashMatch = { link = "Search" },
    FlashCurrent = { link = "IncSearch" },
    FlashBackdrop = { link = "Comment" },
    FlashLabel = { fg = colors.dark_pink },
}

return groups
