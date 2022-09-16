local utils = require "one_monokai.utils"
local highlight = require "one_monokai.themes.highlight"
local groups = require "one_monokai.themes.groups"
local config = require "one_monokai.config"

local themes = {}

function themes.load()
    local colors = require "one_monokai.colors"
    local default = highlight:new(groups.get(colors, config.options.transparent))

    if vim.tbl_isempty(config.options.themes {}) then
        default:set()

        return
    end

    -- extend with user config
    local extended = default:extend(config.options.themes(colors))
    local set_theme_ok, err = pcall(function()
        extended:set()
    end)

    if not set_theme_ok then
        utils.log_error(err)

        default:set()
    end
end

return themes
