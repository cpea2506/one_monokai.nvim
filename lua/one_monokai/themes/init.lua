local utils = require "one_monokai.utils"
local config = require "one_monokai.config"
local colors = require "one_monokai.colors"
local legacy = require "one_monokai.legacy"
local highlight = require "one_monokai.themes.highlight"

local themes = {
    default = {},
    extended = {},
    modules = utils.gen_module_tbl("one_monokai.themes", {
        "base",
        "plugins",
        "languages",
    }),
}

function themes:new()
    local groups = {}

    for _, mod in ipairs(self.modules) do
        for _, group in ipairs(mod) do
            for key, value in pairs(group.get(colors)) do
                groups[key] = value
            end
        end
    end

    self.default = highlight:new(groups)
    self.extended = self.default:extend(config.options.themes(colors))

    return self
end

function themes:load()
    local set_theme_ok, err = pcall(function()
        self.extended:set()
    end)

    if not set_theme_ok then
        legacy.log(err)

        self.default:set()
    end
end

return themes
