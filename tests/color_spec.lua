local one_monokai = require "one_monokai"

describe("Override config with color utility", function()
    it("could use darken utility", function()
        local expected = {
            colors = {
                lmao = "#812873",
            },
            highlights = function(c)
                return {
                    Normal = { fg = c.lmao:darken(0.5) },
                }
            end,
        }

        one_monokai.setup(expected)

        local hl = vim.api.nvim_get_hl(0, { name = "Normal" })

        assert.equal("#41143a", ("#%06x"):format(hl.fg))
    end)

    it("could use lighten utility", function()
        local expected = {
            colors = {
                lmao = "#812873",
            },
            highlights = function(c)
                return {
                    Normal = { fg = c.lmao:lighten(0.5) },
                }
            end,
        }

        one_monokai.setup(expected)

        local hl = vim.api.nvim_get_hl(0, { name = "Normal" })

        assert.equal("#c094b9", ("#%06x"):format(hl.fg))
    end)
end)
