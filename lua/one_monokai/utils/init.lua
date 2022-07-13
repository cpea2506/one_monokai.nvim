local M = {}

---Generate a table contains all modules inside a directory
---@param path string #path to the directory (should not end with '.')
---@param list any[] #list of module's name inside that directory
---@return table #table
function M.gen_module_tbl(path, list)
    local tbl = {}

    for i = 1, #list do
        local module = path .. "." .. list[i]
        tbl[#tbl + 1] = require(module)
    end

    return tbl
end

return M
