# One Monokai Nvim
## About
Vscode One Monokai theme written in Lua for Neovim.

<img width="1680" alt="One monokai look" src="https://user-images.githubusercontent.com/42694704/139383485-ae0be75e-225f-468a-9ce3-ba8cad20ff4c.png">

If you like my setting in the image above. Take a look at my [Neovim configuration](https://github.com/cpea2506/peavim).

## Installation
Install with your favorite package manager:

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'cpea2506/one_monokai.nvim'
```

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'cpea2506/one_monokai.nvim'
```

#### Note: 
You may need [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for better syntax highlighting 😇

## Configuration

Add these to your `init.vim`
```vim
  syntax on
  set termguicolors
  colorscheme one_monokai
```

### Option:
- `one_monokai_no_bg`: enable transparent background.

#### Default
```lua
-- init.lua
vim.g.one_monokai_no_bg = false
```
```vim
" init.vim
let g:one_monokai_no_bg = 0
```

## Inspiration
This is the best theme I've ever seen in my eyes. I tried it written in Vim for a long time and found it's not so easy to do configuration. So I decided to write it in Lua for compatibility with Neovim.

Thanks for these talented and amazing people:

- [one-monokai-vim](https://github.com/fratajczak/one-monokai-vim)
- [vscode one-monokai](https://github.com/azemoh/vscode-one-monokai)
