local M = {}

local highlight = function(group, color)
    local fg = color.fg ~= nil and "guifg=" .. color.fg or "guifg=None"
    local bg = color.bg ~= nil and "guibg=" .. color.bg or "guibg=None"
    local style = color.style ~= nil and "gui=" .. color.style or "gui=None"

    local highlight = "hi " .. group .. " " .. style .. " " .. fg .. " " .. bg

    vim.cmd(highlight)
end

-- Load the theme
M.load = function(theme)
    for group, color in pairs(theme) do
        highlight(group, color)
    end
end

return M
