local utils = {}

function utils.join_paths(...)
    local separator = jit and (jit.os == "Windows" and "\\" or "/") or string.sub(package.config, 1, 1)

    return table.concat({ ... }, separator)
end

return utils
