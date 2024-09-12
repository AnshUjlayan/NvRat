<h1 align="center">NvRat</h1>

**_Slimy Neovim Configuration_**

![NvRat Dashboard](https://i.imgur.com/jkRjs2F.png)

## Overview

NvRat is a streamlined Neovim configuration built on top of NvChad, designed to provide a powerful and efficient editing experience. This setup includes a handpicked collection of plugins for enhanced coding, navigation, and customization.

## Features

### Core Plugins

- [NvChad](https://github.com/NvChad/NvChad)
- [Copilot](https://github.com/github/copilot.vim)
- [Harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
- [Lazygit](https://github.com/kdheepak/lazygit.nvim)
- [Undotree](https://github.com/mbbill/undotree)
- [True-zen](https://github.com/pocco81/true-zen.nvim)
- [Vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

### Snippet Management

- Add your custom snippets under `my-snippets/language/snippet-name.json`.
- After adding new snippets, run the snippet management script to ensure they are added to `package.json`, making them available for Lua-snip.

  ```bash
  python3 my-snippets/create_package.py
  ```

## License

[MIT](LICENSE)
