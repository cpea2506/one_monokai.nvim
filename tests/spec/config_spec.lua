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
            alien = 0xABCDFF,
        },
        highlights = function(c)
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
        assert.are.same(expected.highlights(colors), config.highlights(colors))
    end)

    it("should change default colors", function()
        assert.equal(expected.colors.pink, colors.pink)
        ---@diagnostic disable-next-line: undefined-field
        assert.equal(expected.colors.lmao, colors.lmao)
        ---@diagnostic disable-next-line: undefined-field
        assert.equal(expected.colors.alien, colors.alien)
    end)

    it("should change default highlights", function()
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
end)

describe("Override wrong config", function()
    local wrong_opts = {
        colors = {
            aqua = true,
        },
        highlights = function()
            return {
                Normal = { fg = "lmao", italic = true },
            }
        end,
    }

    local colors_pre = require "one_monokai.colors"

    one_monokai.setup(wrong_opts)

    package.loaded["one_monokai.colors"] = nil

    it("should fallback to default colors", function()
        local colors_post = require "one_monokai.colors"

        assert.are.same(colors_pre.aqua, colors_post.aqua)
    end)

    it("should fallback to default highlights", function()
        local default = require "one_monokai.highlights.groups"
        local hl = vim.api.nvim_get_hl(0, { name = "Normal" })

        assert.equal(default.Normal.fg, ("#%06x"):format(hl.fg))
        assert.is_nil(hl.italic)
    end)
end)
