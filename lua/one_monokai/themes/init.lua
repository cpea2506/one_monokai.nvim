local themes = {}

local config = require "one_monokai.config"
local highlight = require "one_monokai.themes.highlight"
local logs = require "one_monokai.logs"

function themes.load()
    local colors = require "one_monokai.colors"
    local groups = require "one_monokai.themes.groups"

    local default = highlight:new(groups)
    local user_themes = config.themes(colors)

    -- set default if user has no custom themes
    if vim.tbl_isempty(user_themes) then
        default:set()

        return
    end

    -- extend default with user config
    local extended = default:extend(user_themes)
    local set_theme_ok, err = pcall(function()
        extended:set()
    end)

    if not set_theme_ok then
        default:set()

        logs.error.notify(err)
    end
end

return themes
