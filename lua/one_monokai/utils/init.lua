local M = {}

---Generate a table contains all modules inside a directory
---@param path string #path to the directory (should not end with '.')
---@param list any[] #list of module's name inside that directory
---@return table #table
function M.gen_module_table(path, list)
    local tbl = {}

    for _, name in pairs(list) do
        local module = require(string.format("%s.%s", path, name))
        table.insert(tbl, module)
    end

    return tbl
end

return M
