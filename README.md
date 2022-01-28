# One Monokai Nvim

Vscode One Monokai theme written in Lua for Neovim.

<img width="1680" alt="One monokai look" src="https://user-images.githubusercontent.com/42694704/139383485-ae0be75e-225f-468a-9ce3-ba8cad20ff4c.png">

## Installation
Install with your favorite package manager.

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'cpea2506/one_monokai.nvim'
```

[vim-plug](https://github.com/junegunn/vim-plug)

```lua
Plug 'cpea2506/one_monokai.nvim'
```

#### Note
You may need [Nvim Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for better syntax highlighting. 😇

## Setup

```vim
" vim
colorscheme one_monokai
```

```lua
-- lua
vim.cmd("colorscheme one_monokai")
```

### Option

- `one_monokai_no_bg`: enable transparent background.

#### Default

```lua
-- lua
vim.g.one_monokai_no_bg = false
``` 

```vim
" vim
let g:one_monokai_no_bg = 0
```

### Custom
You can easily custom your highlight group. Override the list of supported values or add more on your own.
1. [colors](https://github.com/cpea2506/one_monokai.nvim/blob/main/lua/one_monokai/colors.lua)
2. [themes](https://github.com/cpea2506/one_monokai.nvim/blob/main/lua/one_monokai/themes.lua)

```lua
-- with default colors
local colors = require "one_monokai.colors" 

-- with custom colors
local custom_colors = {
  green = "#0f0",
  blue = "#0f0",
  roman = "#e36965",
  -- other colors
}

local themes = require "one_monokai.themes"
themes.custom = {
    DiffAdd = { fg = custom_colors.green },
    DiffDelete = { fg = colors.black, bg = custom_colors.roman },
    ErrorMsg = { fg = colors.black, bg = colors.red, style = "standout" },
    -- another highlight groups
}
```

## Inspiration
This is the best theme I've ever seen in my eyes. I tried it written in Vim for a long time and found it's not so easy to do configuration. So I decided to write it in Lua for compatibility with Neovim.

Thanks for these talented and amazing people:

- [one-monokai-vim](https://github.com/fratajczak/one-monokai-vim)
- [vscode one-monokai](https://github.com/azemoh/vscode-one-monokai)
