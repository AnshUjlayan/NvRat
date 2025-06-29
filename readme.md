<h1 align="center">NvRat</h1>

**_Slimy Neovim Configuration_**

<img width="1544" alt="NvRat Dashboard" src="https://github.com/user-attachments/assets/be0ec0fa-4179-4aa0-ae58-722b2f49d0da" />

## Overview

NvRat is a streamlined Neovim configuration built on top of NvChad, designed to provide a powerful and efficient editing experience. This setup includes a handpicked collection of plugins for enhanced coding, navigation, and customization.

## Get Started

### Remove your existing nvim config

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

### Clone this repository

```bash
git clone https://github.com/AnshUjlayan/NvRat ~/.config/nvim && nvim
```

Run `:MasonInstallAll` command after lazy.nvim finishes downloading plugins.

## Features

### Core Plugins

- [NvChad](https://github.com/NvChad/NvChad)
- [Copilot](https://github.com/github/copilot.vim)
- [Harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
- [Flash](https://github.com/folke/flash.nvim)
- [True-zen](https://github.com/pocco81/true-zen.nvim)
- [Lazygit](https://github.com/kdheepak/lazygit.nvim)
- [Undotree](https://github.com/mbbill/undotree)
- [Neoscroll](https://github.com/karb94/neoscroll.nvim)
- [CodeSnap](https://github.com/mistricky/codesnap.nvim)
- [Vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

### Snippet Management

- Add your custom snippets under `my-snippets/language/snippet-name.json`.
- After adding new snippets, run the snippet management script to ensure they are added to `package.json`, making them available for Lua-snip.

  ```bash
  python3 my-snippets/create_package.py
  ```

## License

[MIT](LICENSE)
