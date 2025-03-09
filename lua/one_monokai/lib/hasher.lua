---@class hasher
local hasher = {}

local bitlib = bit or bit32 or require "one_monokai.lib.bitlib"

---@source: https://theartincode.stanis.me/008-djb2/
local function hash_str(str)
    local hash = 5381

    for i = 1, #str do
        hash = bitlib.lshift(hash, 5) + hash + string.byte(str, i)
    end

    return hash
end

---@source: https://codeforces.com/blog/entry/85900
function hasher.hash(value)
    local colors = require "one_monokai.colors"
    local t = type(value)

    if t == "table" then
        local hash = 0

        for p, u in next, value do
            hash = bitlib.bxor(hash, hash_str(p .. hasher.hash(u)))
        end

        return hash
    elseif t == "function" then
        return hasher.hash(value(colors))
    end

    return tostring(value)
end

return hasher
