<div align="center">
  <h1>
      <img
          src="https://user-images.githubusercontent.com/42694704/196938815-ea5d1bdd-a2b8-4327-9b43-46d84920d381.png"
          width="180"
          alt="logo"
      />
      <br/>
      One Monokai Nvim
  </h1>
  
  VSCode One Monokai colorscheme written in Lua for Neovim.
</div>

![demo](https://user-images.githubusercontent.com/42694704/196934147-0704f7ec-456f-4a07-b44f-ac99896c7b22.png)

<p align = "center"><b>Normal background</b></p>

<br />

![transparent demo](https://user-images.githubusercontent.com/42694704/196934131-0c7134ec-7266-4200-bf5a-901cf5d28e12.png)

<p align = "center"><b>Transparent background</b></p>

## :rocket: Installation

```lua
{
  "cpea2506/one_monokai.nvim",
}
```

### Requirement

- Neovim >= 0.9.1
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for better syntax highlighting (optional) 😇

## :gear: Setup

```lua
vim.cmd.colorscheme "one_monokai"
```

Or prefer below if you want to customize some options

```lua
require("one_monokai").setup({
    -- your options
})
```

### Options

| Option        | Description                   | Type                       | Note             |
| ------------- | ----------------------------- | -------------------------- | ---------------- |
| `transparent` | enable transparent background | `boolean`                  | N/A              |
| `colors`      | custom colors                 | `table<string, string>`    | N/A              |
| `themes`      | custom highlight groups       | `function(colors): tables` | `:h nvim_set_hl` |
| `italics`     | enable italics                | `boolean`                  | N/A              |

### Default

```lua
require("one_monokai").setup({
    transparent = false,
    colors = {},
    themes = function(colors)
        return {}
    end,
    italics = true,
})
```

### Customization example

#### Available colors and themes

1. [colors](lua/one_monokai/colors.lua#L7)
2. [themes](lua/one_monokai/themes/groups.lua#L6)

Color provides two method, `darken` and `lighten` to blend color based on provided
alpha value. You can access them via:

```lua
colors["<color-name>"]:darken(alpha)
colors["<color-name>"]:lighten(alpha)
```

#### Example

```lua
require("one_monokai").setup({
    transparent = true,  -- enable transparent window
    colors = {
        lmao = "#ffffff", -- add new color
        pink = "#ec6075", -- replace default color
    },
    themes = function(colors)
        -- change highlight of some groups,
        -- the key and value will be passed respectively to "nvim_set_hl"
        return {
            Normal = { bg = colors.lmao },
            DiffChange = { fg = colors.white:darken(0.3) },
            ErrorMsg = { fg = colors.pink, standout = true },
            ["@lsp.type.keyword"] = { link = "@keyword" }
        }
    end,
    italics = false, -- disable italics
})
```

## :champagne: Plugins support

- [Lualine](https://github.com/nvim-lualine/lualine.nvim)

![lualine demo](https://user-images.githubusercontent.com/42694704/196934170-84a1f32c-f97b-4f00-859b-e822f4d14479.png)

```lua
require("lualine").setup {
  options = {
      -- ...other options
      theme = "one_monokai"
  }
}
```

## :eyes: Inspiration

This is the best theme I’ve ever seen in my eyes. I’ve tried it written in Vim for a long time and decided to write it in Lua for compatibility with Neovim, and make it easy to do some custom changes.

Thanks for these talented and amazing people:

- [one-monokai-vim](https://github.com/fratajczak/one-monokai-vim)
- [vscode one-monokai](https://github.com/azemoh/vscode-one-monokai)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [onedarkpro.nvim](https://github.com/olimorris/onedarkpro.nvim)

## :scroll: Contribution

Please see [the contributing guidelines](CONTRIBUTING.md) for detailed
instructions on how to contribute to this colorscheme.
