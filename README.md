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
  
  A VSCode One Monokai-inspired colorscheme, rewritten in Lua for seamless Neovim integration.
</div>

![demo](https://user-images.githubusercontent.com/42694704/196934147-0704f7ec-456f-4a07-b44f-ac99896c7b22.png)

<p align="center"><b>Normal background</b></p>

<br />

![transparent demo](https://user-images.githubusercontent.com/42694704/196934131-0c7134ec-7266-4200-bf5a-901cf5d28e12.png)

<p align="center"><b>Transparent background</b></p>

## :rocket: Installation

```lua
{
  "cpea2506/one_monokai.nvim",
}
```

### Requirements

- Neovim >= 0.9.1
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for enhanced syntax highlighting (optional) 😇

## :gear: Setup

```lua
vim.cmd.colorscheme "one_monokai"
```

Or use the following approach if you wish to customize options:

```lua
require("one_monokai").setup({
    -- your custom options here
})
```

### Available Options

| Option        | Description                      | Type                       | Note             |
| ------------- | -------------------------------- | -------------------------- | ---------------- |
| `transparent` | Enables a transparent background | `boolean`                  | N/A              |
| `colors`      | Custom color definitions         | `table<string, string>`    | N/A              |
| `highlights`      | Custom highlight groups          | `function(colors): table` | `:h nvim_set_hl` |
| `italics`     | Enables italic                   | `boolean`                  | N/A              |

### Default Configuration

```lua
require("one_monokai").setup({
    transparent = false,
    colors = {},
    highlights = function(colors)
        return {}
    end,
    italics = true,
})
```

### Customization Examples

#### Available Colors and Highlights

1. [Colors](lua/one_monokai/colors.lua)
2. [highlights](lua/one_monokai/highlights/groups.lua)

The color module provides two methods, `darken` and `lighten`, to blend colors based on an alpha value (between 0 and 1). You can use them as follows:

```lua
colors["<color-name>"]:darken(alpha)
colors["<color-name>"]:lighten(alpha)
```

#### Example Configuration

```lua
require("one_monokai").setup({
    transparent = true,  -- Enable transparent background
    colors = {
        lmao = "#ffffff", -- Define a new color
        pink = "#ec6075", -- Override a default color
    },
    highlights = function(colors)
        -- Customize highlight groups
        -- The key-value pairs are passed to "nvim_set_hl"
        return {
            Normal = { bg = colors.lmao },
            DiffChange = { fg = colors.white:darken(0.3) },
            ErrorMsg = { fg = colors.pink, standout = true },
            ["@lsp.type.keyword"] = { link = "@keyword" }
        }
    end,
    italics = false, -- Disable italic
})
```

> [!TIP]
> To find the highlight group for an item, place the cursor inside it and run `:Inspect`. Refer to `:h :Inspect` for more information.

## :champagne: Plugin Support

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

This is, in my opinion, the best theme I’ve ever used. After using it in Vim for a long time, I rewrote it in Lua to ensure better compatibility with Neovim and to allow for easier customization.

A huge thanks to these talented and inspiring creators:

- [one-monokai-vim](https://github.com/fratajczak/one-monokai-vim)
- [vscode one-monokai](https://github.com/azemoh/vscode-one-monokai)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [onedarkpro.nvim](https://github.com/olimorris/onedarkpro.nvim)

## :scroll: Contribution

For detailed instructions on how to contribute to this colorscheme, please see [the contributing guidelines](CONTRIBUTING.md).
