local config = require "one_monokai.config"

describe("Config options", function()
    it("could be indexed without options field", function()
        assert.are.same(false, config.use_cmd)
        assert.are.same({}, config.colors)
    end)
end)

describe("Override config", function()
    local expected = {
        use_cmd = true,
        colors = {
            pink = "#61afef",
            lmao = "#dedeff",
        },
        themes = function(c)
            return {
                Normal = { fg = c.lmao, italic = true },
            }
        end,
    }

    require("one_monokai").setup(expected)

    local colors = require "one_monokai.colors"

    it("should change the default config", function()
        assert.are.same(true, config.use_cmd)
        assert.are.same(false, config.transparent)
        assert.are.same(expected.colors, config.colors)
        assert.are.same(expected.themes(colors), config.themes(colors))
    end)

    it("should change default colors", function()
        assert.equals(expected.colors.pink, colors.pink)
        assert.equals(expected.colors.lmao, colors.lmao)
    end)

    it("should change default themes", function()
        local hl = vim.api.nvim_get_hl_by_name("Normal", true)

        assert.equals(expected.colors.lmao, string.format("#%06x", hl.foreground))
        assert.are.same(true, hl.italic)
    end)
end)
