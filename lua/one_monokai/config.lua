---@class one_monokai.config.cache
---@field path string #Path to cache directory.

---@class one_monokai.config
---@field transparent boolean #Whether to enable transparent background.
---@field colors? one_monokai.colors #Custom colors.
---@field highlights? fun(colors:one_monokai.colors):one_monokai.highlights.groups #Custom highlight groups.
---@field italics boolean #Whether to apply italics to certain highlight groups.
---@field cache one_monokai.config.cache #Cache options.
local config = {}

---@type one_monokai.config
local defaults = {
    transparent = false,
    colors = nil,
    highlights = nil,
    italics = true,
    cache = {
        path = vim.fs.joinpath(vim.fn.stdpath "cache", "one_monokai"),
    },
}

config.options = vim.deepcopy(defaults)

---Extend default with user's config.
---@param opts one_monokai.config
function config.extend(opts)
    if not opts or vim.tbl_isempty(opts) then
        return
    end

    config.options = vim.tbl_deep_extend("force", config.options, opts)
end

setmetatable(config, {
    __index = function(_, k)
        return config.options[k]
    end,
})

return config
