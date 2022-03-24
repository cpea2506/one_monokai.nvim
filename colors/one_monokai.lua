for k in pairs(package.loaded) do
    if k:match ".*one_monokai.*" then
        package.loaded[k] = nil
    end
end

require("one_monokai").setup()
