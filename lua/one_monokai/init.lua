local M = {}

---@param opts one_monokai.options
function M.setup(opts)
    local config = require "one_monokai.config"
    local highlights = require "one_monokai.highlights"

    config.extend(opts)
    highlights.load()
end

return M
