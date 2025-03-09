---@class compiler
---@source: https://github.com/catppuccin/nvim
local compiler = {}

local fmt = string.format
local utils = require "one_monokai.utils"

local function inspect(attr)
    local list = {}

    for key, value in pairs(attr) do
        local t = type(value)

        if t == "string" then
            table.insert(list, fmt([[%s = "%s"]], key, value))
        else
            table.insert(list, fmt("%s = %s", key, t == table and inspect(value) or tostring(value)))
        end
    end

    return fmt([[{ %s }]], table.concat(list, ", "))
end

function compiler.compile()
    local config = require "one_monokai.config"
    local themes = require "one_monokai.themes"
    local cached_themes_path = utils.join_paths(config.compile_path, "themes")

    local lines = {
        [[
return string.dump(function()
local hi = vim.api.nvim_set_hl
if vim.g.colors_name then vim.cmd.hi "clear" end
vim.o.termguicolors = true
vim.g.colors_name = "one_monokai"
vim.o.background = "dark"
]],
    }

    for name, attrs in pairs(themes.groups) do
        for _, attr in pairs(attrs) do
            if not config.italics and attr == "italic" then
                attrs[attr] = false
            end
        end

        table.insert(lines, fmt([[hi(0, "%s", %s)]], name, inspect(attrs)))
    end

    table.insert(lines, "end, true)")

    if vim.fn.isdirectory(config.compile_path) == 0 then
        vim.fn.mkdir(config.compile_path, "p")
    end

    local f = loadstring(table.concat(lines, "\n"))

    if not f then
        local err_path = os.getenv "TMP" .. "/one_monokai_error.lua"

        print(string.format(
            [[One Monokai (error): Most likely some mistake made in your One Monokai config
You can open %s for debugging

If you think this is a bug, kindly open an issue and attach %s file
Below is the error message that we captured:
]],
            err_path,
            err_path
        ))

        local err = io.open(err_path, "wb")

        if err then
            err:write(table.concat(lines, "\n"))
            err:close()
        end

        dofile(err_path)

        return
    end

    local file = assert(
        io.open(cached_themes_path, "wb"),
        "Permission denied while writing compiled file to " .. config.compile_path
    )

    file:write(f())
    file:close()
end

return compiler
