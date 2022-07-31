<div align="center">
  <h1>
      <img src="./assets/logo.png" width="80px">
      <br/>
      One Monokai Nvim
  </h1>
  
  VSCode One Monokai theme written in Lua for Neovim.
</div>
  
![one monokai demo](./assets/demo.png)

## Installation

```lua
use "cpea2506/one_monokai.nvim"
```

#### Note

- Require Neovim >= 0.7
- You may need [Nvim Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for better syntax highlighting. 😇

## Setup

```lua
require("one_monokai").setup()
```

### Options

- `transparent`: enable transparent background.
- `colors`: override list default colors.
- `themes`: override list default highlight groups. The function accepts `colors` as argument.

#### Default

```lua
{
    transparent = false,
    colors = {},
    themes = function(colors)
        return {}
    end,
}
```

### Customization example
You can easily change highlighting groups. Override the list of supported values or add more on your own.
1. [colors](https://github.com/cpea2506/one_monokai.nvim/blob/36ce54a2e5a8a6f112beb1f55414e2bb78a10de0/lua/one_monokai/colors.lua#L4)
2. [themes](https://github.com/cpea2506/one_monokai.nvim/blob/36ce54a2e5a8a6f112beb1f55414e2bb78a10de0/lua/one_monokai/themes.lua#L6)

```lua
require("one_monokai").setup({
    colors = {
        green = "#00ff00",
        blue = "#0000ff",
        roman = "#e36965",
        lmao = "#282c34",
    },
    themes = function(colors)
        return {
            Normal = { bg = colors.lmao },
            Comment = { fg = colors.pink, italic = true },
            ErrorMsg = { fg = "black", bg = "#ec6075", standout = true },
            NormalFloat = { link = "Normal" },
        }
    end,
})
```

### Other plugins support

- [lualine](https://github.com/nvim-lualine/lualine.nvim):

```lua
require("lualine").setup {
  options = {
    -- ...another setting
    theme = "one_monokai"
  }
}
```

## Inspiration
This is the best theme I’ve ever seen in my eyes. I’ve tried it written in Vim for a long time and decided to write it in Lua for compatibility with Neovim, make it easy to change some settings.

Thanks for these talented and amazing people:

- [one-monokai-vim](https://github.com/fratajczak/one-monokai-vim)
- [vscode one-monokai](https://github.com/azemoh/vscode-one-monokai)
