---@class one_monokai.highlights
local highlights = {}

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

---Set highlight groups.
---@param groups one_monokai.highlights.groups #Highlight groups.
local function set_highlight(groups)
    local logs = require "one_monokai.logs"
    local set_hl = vim.api.nvim_set_hl

    for name, attrs in pairs(groups) do
        local ok, err = pcall(set_hl, 0, name, attrs)

        if not ok then
            logs.error("highlights(%s): %s", name, err)
        end
    end
end

---Load all highlight groups.
function highlights.load()
    local core_groups = require "one_monokai.highlights.groups.core"
    set_highlight(core_groups)

    local async
    async = vim.uv.new_async(vim.schedule_wrap(function()
        local default_groups = require "one_monokai.highlights.groups"
        set_highlight(default_groups)

        if async ~= nil then
            async:close()
        end
    end))

    if async ~= nil then
        async:send()
    end
end

return highlights
