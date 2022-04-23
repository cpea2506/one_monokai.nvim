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
- Require Neovim >= 0.7
- You may need [Nvim Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for better syntax highlighting. 😇

## Setup

```vim
" vim
colorscheme one_monokai
```

```lua
-- lua
require("one_monokai").setup()
```

### Option

- `one_monokai_transparent`: enable transparent background.

#### Default

```lua
-- lua
require("one_monokai").setup({
    transparent = false
})
``` 

```vim
" vim
" options need to be set before loading the colorscheme
let g:one_monokai_transparent = 0
```

## Inspiration
This is the best theme I've ever seen in my eyes. I tried it written in Vim for a long time and found it's not so easy to do configuration. So I decided to write it in Lua for compatibility with Neovim.

Thanks for these talented and amazing people:

- [one-monokai-vim](https://github.com/fratajczak/one-monokai-vim)
- [vscode one-monokai](https://github.com/azemoh/vscode-one-monokai)
