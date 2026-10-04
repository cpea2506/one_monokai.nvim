---@class one_monokai.highlights.groups
---@field [string] vim.api.keyset.highlight
local groups = {}

local plugins = {
    "blink_cmp",
    "bufferline",
    "checkhealth",
    "conflict_markers",
    "core",
    "crates",
    "dashboard",
    "diff",
    "flash",
    "fyler",
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
    ---@type one_monokai.highlights.groups
    local default_groups = require(("one_monokai.highlights.groups.%s"):format(plugin))

    for name, attrs in pairs(default_groups) do
        groups[name] = attrs
    end
end

local config = require "one_monokai.config"
local colors = require "one_monokai.colors"

for name, attrs in pairs(config.options.highlights(colors)) do
    groups[name] = attrs
end

return groups
