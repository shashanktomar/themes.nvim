# 🌈 themes.nvim

**themes.nvim** is a Neovim plugin with builtin UI themes.

> **Credit**: This plugin is a port of [NvChad base46](https://github.com/NvChad/base46) plugin to
> use it outside NvChad setup. It would not have been possible without amazing work done on NvChad repo

## ✨ Features

- 🎨 Provided themes
  - aquarium
  - ashes
  - ayu_dark
  - ayu_light
  - chadracula
- 🛠️ Integration with other plugins to change the highlight groups based on selected theme
  - [which-key](https://github.com/folke/which-key.nvim)

## 📺 Showcase

TODO add screenshots to wiki and link to the page

## ⚡️ Requirements

TODO

## 📦 Installation

Install the plugin with your preferred package manager:

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
require("lazy").setup({
  {
    "shashanktomar/themes.nvim",
    config = function()
      require("themes").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },
})
```

### [packer](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "shashanktomar/themes.nvim",
  config = function()
    require("themes").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
```

## ⚙️ Configuration

TODO

```lua
require("themes").setup({
    -- you can copy the full list from lua/themes/config.lua
})
```

## ⌨ Contributing

PRs and issues are always welcome. Make sure to provide as much context as possible when opening one.

## 🎭 Motivations

- [NvChad](https://nvchad.com/) [base46](https://github.com/NvChad/base46) plugin
