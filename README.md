# One Monokai Nvim

Vscode One Monokai theme written in Lua for Neovim.

<img width="1680" alt="One monokai look" src="https://user-images.githubusercontent.com/42694704/139383485-ae0be75e-225f-468a-9ce3-ba8cad20ff4c.png">

## Installation

```lua
use 'cpea2506/one_monokai.nvim'
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
- `themes`: override list default highlight groups. The function accpet colors as argument

#### Default

```lua
{
    transparent = false
    colors = require("one_monokai.colors"),
    themes = function(colors)
        return {}
    end
}
```

### Customize example
You can easily custom your highlight group. Override the list of supported values or add more on your own.
1. [colors](https://github.com/cpea2506/one_monokai.nvim/blob/main/lua/one_monokai/colors.lua)
2. [themes](https://github.com/cpea2506/one_monokai.nvim/blob/main/lua/one_monokai/themes.lua)

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
            ErrorMsg = { fg = "#000000", bg = "#ec6075", standout = true },
        }
    end,
})
```

## Inspiration
This is the best theme I've ever seen in my eyes. I tried it written in Vim for a long time and found it's not so easy to do configuration. So I decided to write it in Lua for compatibility with Neovim.

Thanks for these talented and amazing people:

- [one-monokai-vim](https://github.com/fratajczak/one-monokai-vim)
- [vscode one-monokai](https://github.com/azemoh/vscode-one-monokai)
