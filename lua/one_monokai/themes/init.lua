local themes = { default = {}, extended = {} }

function themes:new()
    local config = require "one_monokai.config"
    local colors = require "one_monokai.colors"
    local highlight = require "one_monokai.themes.highlight"

    local base = require "one_monokai.themes.base"
    local plugins = require "one_monokai.themes.plugins"
    local languages = require "one_monokai.themes.languages"

    local groups = {}

    for _, mod in pairs { base, plugins, languages } do
        for _, group in pairs(mod) do
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
    local legacy = require "one_monokai.legacy"

    local set_theme_ok, err = pcall(function()
        self.extended:set()
    end)

    if not set_theme_ok then
        legacy.log(err)

        self.default:set()
    end
end

return themes
