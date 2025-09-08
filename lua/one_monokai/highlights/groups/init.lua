---@class one_monokai.highlights.groups
---@field [string] vim.api.keyset.highlight
local groups = {}

---@type string[]
local plugins = {
    "blink_cmp",
    "bufferline",
    "checkhealth",
    "conflict_markers",
    "crates",
    "dashboard",
    "diff",
    "flash",
    "fzf",
    "git_conflict",
    "indent_blankline",
    "lazy",
    "leap",
    "lsp",
    "mason",
    "mini",
    "nvim_cmp",
    "nvim_navic",
    "nvim_notify",
    "nvimtree",
    "oil",
    "rainbow_delimiters",
    "sj",
    "snacks",
    "telescope",
    "treesitter",
    "vim_illuminate",
    "whichkey",
}

for _, plugin in ipairs(plugins) do
    ---@type table<string, vim.api.keyset.highlight>
    local default_groups = require(("one_monokai.highlights.groups.%s"):format(plugin))

    for name, attrs in pairs(default_groups) do
        groups[name] = attrs
    end
end

local config = require "one_monokai.config"
local colors = require "one_monokai.colors"

if config.highlights then
    ---@type table<string, vim.api.keyset.highlight>
    local user_groups = config.highlights(colors)

    for name, attrs in pairs(user_groups) do
        groups[name] = attrs
    end
end

return groups
