for mod in pairs(package.loaded) do
    if mod:match ".*one_monokai.*" then
        package.loaded[mod] = nil
    end
end

require("one_monokai").setup()
