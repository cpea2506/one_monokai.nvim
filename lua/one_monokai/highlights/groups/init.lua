---@class one_monokai.highlights.groups
---@field [string] vim.api.keyset.highlight
local groups = {}

---@type string[]
local modules = {
    "blink_cmp",
    "bufferline",
    "checkhealth",
    "conflict_markers",
    "core",
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

for _, module in ipairs(modules) do
    ---@type table<string, vim.api.keyset.highlight>
    local hl_groups = require(("one_monokai.highlights.groups.%s"):format(module))

    for name, attrs in pairs(hl_groups) do
        groups[name] = attrs
    end
end

return groups
