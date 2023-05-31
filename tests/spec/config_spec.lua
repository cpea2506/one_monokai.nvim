local config = require "one_monokai.config"

describe("Config options", function()
    it("could be indexed without options field", function()
        assert.are.same({}, config.colors)
    end)
end)

describe("Override config", function()
    local logs = require "one_monokai.logs"

    local expected = {
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
        assert.equal(false, config.transparent)
        assert.are.same(expected.colors, config.colors)
        assert.are.same(expected.themes(colors), config.themes(colors))
    end)

    it("should change default colors", function()
        assert.equal(expected.colors.pink, colors.pink)
        assert.equal(expected.colors.lmao, colors.lmao)
    end)

    it("should change default themes", function()
        local hl = vim.api.nvim_get_hl(0, { name = "Normal" })

        assert.equal(expected.colors.lmao, ("#%06x"):format(hl.fg))
        assert.equal(true, hl.italic)
    end)

    before_each(function()
        logs.error.msg = ""
    end)

    it("should log error on wrong colors", function()
        local wrong_config = {
            colors = {
                lmao = true,
            },
        }

        require("one_monokai").setup(wrong_config)

        assert.is_not.equal("", logs.error.msg)
    end)

    it("should log error on wrong highlight groups", function()
        local wrong_config = {
            themes = function()
                return {
                    lmao = true,
                }
            end,
        }

        require("one_monokai").setup(wrong_config)

        assert.is_not.equal("", logs.error.msg)
    end)
end)
