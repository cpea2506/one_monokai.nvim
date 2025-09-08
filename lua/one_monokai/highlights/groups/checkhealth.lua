local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    healthSuccess = { fg = colors.green },
    healthWarning = { fg = colors.yellow },
    helpCommand = { fg = colors.orange },
    helpHyperTextJump = { fg = colors.aqua },
    helpHeader = { fg = colors.white },
    helpSectionDelim = { fg = colors.green },
}

return groups
