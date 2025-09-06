local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    SjLabel = { fg = colors.dark_pink },
    SjLimit = { link = "ErrorMsg" },
    SjOverlay = { link = "Comment" },
    SjSearch = { link = "IncSearch" },
    SjWarning = { link = "WarningMsg" },
}

return groups
