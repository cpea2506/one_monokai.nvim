local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeNormal = { link = "Normal" },
    TelescopePromptCounter = { fg = colors.aqua },
    TelescopeTitle = { fg = colors.aqua },
}

return groups
