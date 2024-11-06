
# My Neovim Configuration

Welcome to my personal Neovim configuration! This setup is designed for a productive, efficient, and enjoyable coding experience, tailored with custom keybindings, plugins, and other configurations. This README outlines the key features, plugins, and configuration details to help you understand and get started with my setup.

## Table of Contents
- [Requirements](#requirements)
- [Installation](#installation)
- [Key Features](#key-features)
- [Plugins](#plugins)
- [Configuration Highlights](#configuration-highlights)
- [Custom Keybindings](#custom-keybindings)
- [Acknowledgments](#acknowledgments)

## Requirements
- **Neovim** >= 0.8
- **Git**
- **Node.js** (for some plugins that require it)
- **ripgrep** (for faster searching)
- **fd** (optional but recommended for file searching)

## Installation
1. Clone this repository to your Neovim configuration directory:
   ```bash
   git clone github.com/agentojr/nvim ~/.config/nvim
   ```
2. Open Neovim and run the following command to install plugins:
   ```vim
   :Lazy Install
   ```
3. Restart Neovim and enjoy your new configuration!

## Key Features
- **Fast and Lightweight**: Minimal plugins and streamlined setup for maximum performance.
- **Intuitive Keybindings**: Custom key mappings designed for efficient navigation and editing.
- **LSP Integration**: Full support for Language Server Protocol (LSP) with autocompletion, diagnostics, and more.
- **File Management**: Easy navigation and file management with Telescope and `fd`.
- **Git Integration**: Git commands and status available within Neovim.
- **Terminal Integration**: Seamless terminal experience directly inside Neovim.

## Plugins
My configuration is powered by `lazy.nvim`, which is used to manage plugins. Here are some of the main plugins I use:

- **lazy.nvim**: Plugin manager for fast and efficient plugin management.
- **nvim-treesitter**: Syntax highlighting and code parsing.
- **nvim-lspconfig**: Language server configurations for multiple languages.
- **cmp-nvim-lsp**: Autocompletion for LSP.
- **telescope.nvim**: Fuzzy finder for files, buffers, and more.
- **curl.nvim**: For running `curl` commands directly from Neovim.
- **lualine.nvim**: Aesthetic and informative status line.
- **gitsigns.nvim**: Git integration and gutter signs.

## Configuration Highlights
- **LSP Setup**: Configured with `nvim-lspconfig` and `cmp-nvim-lsp` for autocompletion and language support. Language servers for several popular languages are pre-configured, including TypeScript, Python, and Lua.
- **Treesitter**: Provides syntax highlighting and better code parsing for an improved coding experience.
- **Telescope**: Fuzzy finder for files and text within the project, using `fd` for fast file searches.
- **Keybindings**: Custom mappings for common actions like buffer management, file navigation, and more.

## Custom Keybindings
- `<leader>ff`: Open Telescope to find files.
- `<leader>fw`: Search for text within the project.
- `<leader>fb`: List open buffers.
- `<leader>rn`: Rename a symbol (LSP).
- `<leader>ca`: Code actions (LSP).

*(You can expand this section with specific keybindings unique to your workflow)*

## Acknowledgments
This configuration was inspired by the Neovim community and various resources across the web. Special thanks to the creators of Neovim and all the contributors to the plugins used here.

---

Feel free to customize this configuration and make it your own! If you have any questions or improvements, feel free to open an issue or PR.

Happy Coding! 🚀
