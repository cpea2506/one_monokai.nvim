---@class one_monokai.config
local config = {}

---@class one_monokai.options
local defaults = {
    transparent = false,
    ---@type one_monokai.colors
    colors = {},
    ---@param colors one_monokai.colors
    ---@return one_monokai.highlights.groups
    ---@diagnostic disable-next-line: unused
    highlights = function(colors)
        return {}
    end,
    italics = true,
    cache = {
        path = vim.fs.joinpath(vim.fn.stdpath "cache", "one_monokai"),
    },
}

config.options = vim.deepcopy(defaults)

---Extend default with user's config.
---@param opts one_monokai.options
function config.extend(opts)
    if not opts or vim.tbl_isempty(opts) then
        return
    end

    config.options = vim.tbl_deep_extend("force", config.options, opts)
end

return config
