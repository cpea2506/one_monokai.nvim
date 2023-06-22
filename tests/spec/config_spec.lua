local config = require "one_monokai.config"
local one_monokai = require "one_monokai"

describe("Config options", function()
    it("could be indexed without options field", function()
        assert.are.same({}, config.colors)
    end)
end)

describe("Override config", function()
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
        italics = false,
    }

    one_monokai.setup(expected)

    local colors = require "one_monokai.colors"

    it("should change the default config", function()
        assert.is_false(config.transparent)
        assert.are.same(expected.colors, config.colors)
        assert.are.same(expected.themes(colors), config.themes(colors))
    end)

    it("should change default colors", function()
        assert.equal(expected.colors.pink, colors.pink)
        ---@diagnostic disable-next-line: undefined-field
        assert.equal(expected.colors.lmao, colors.lmao)
    end)

    it("should change default themes", function()
        local hl = vim.api.nvim_get_hl(0, { name = "Normal" })

        assert.equal(expected.colors.lmao, ("#%06x"):format(hl.fg))
        assert.is_true(hl.italic)
    end)

    it("should disable all italics", function()
        local comment_hl = vim.api.nvim_get_hl(0, { name = "Comment" })
        local paremeter_hl = vim.api.nvim_get_hl(0, { name = "@parameter" })

        assert.is_nil(comment_hl.italic)
        assert.is_nil(paremeter_hl.italic)
    end)

    describe("with errors", function()
        local logs = require "one_monokai.logs"

        before_each(function()
            logs.error.msg = ""
        end)

        it("should log error on wrong colors", function()
            local wrong_config = {
                colors = {
                    lmao = true,
                },
            }

            one_monokai.setup(wrong_config)

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

            one_monokai.setup(wrong_config)

            assert.is_not.equal("", logs.error.msg)
        end)
    end)
end)
