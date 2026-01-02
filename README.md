# Neovim Configuration

A minimal and modular Neovim configuration built with Lua, featuring extensive plugin support, LSP integration, code formatting, and linting capabilities.

## Features

- **Plugin Management**: Lightweight plugin loading system with lazy loading support
- **Language Server Protocol (LSP)**: Built-in LSP support for multiple languages
- **Code Formatting**: Using `conform.nvim` for consistent code formatting
- **Linting**: Integrated linting with `nvim-lint`
- **Treesitter**: Advanced syntax highlighting and text objects
- **Mini.nvim Ecosystem**: Collection of minimal, independent plugins including:
  - `mini.ai` - Extended text objects and motions
  - `mini.clue` - Keybinding hints
  - `mini.cmdline` - Lightweight command line interface
  - `mini.comment` - Smart commenting
  - `mini.completion` - Minimal completion engine
  - `mini.files` - File explorer
  - `mini.icons` - Icon support
  - `mini.jump` - Enhanced jumping
  - `mini.pairs` - Autopair functionality
  - `mini.pick` - Fuzzy picker
  - `mini.splitjoin` - Code splitting/joining
  - `mini.surround` - Surround text objects
- **Theme**: Gruvbox color scheme
- **Additional Tools**:
  - `snacks.nvim` - Various useful utilities
  - `undotree` - Visual undo history
  - `todo-comments` - Highlighting and navigation of todo comments

## Project Structure

```
~/.config/nvim/
├── init.lua                    # Main entry point
├── nvim-pack-lock.json        # Plugin lock file
└── lua/
    ├── configs/               # Editor configuration
    │   ├── autocmd.lua       # Autocommands
    │   ├── init.lua          # Config loader
    │   ├── keymaps.lua       # Key mappings
    │   ├── options.lua       # Editor options
    │   ├── statusline.lua    # Status line configuration
    │   └── terminal.lua      # Terminal configuration
    ├── globals/              # Global variables and utilities
    │   └── init.lua
    ├── lsp/                  # Language Server configurations
    │   ├── bash.lua          # Bash/Shell LSP
    │   ├── emmet.lua         # Emmet LSP (HTML/CSS)
    │   ├── html.lua          # HTML LSP
    │   ├── json.lua          # JSON LSP
    │   ├── lua.lua           # Lua LSP
    │   ├── marksman.lua      # Markdown LSP
    │   ├── python.lua        # Python LSP
    │   ├── tailwindcss.lua   # Tailwind CSS LSP
    │   ├── typescript.lua    # TypeScript/JavaScript LSP
    │   └── init.lua          # LSP loader
    └── plugins/              # Plugin configurations
        ├── conform.lua       # Code formatter setup
        ├── gruvbox.lua       # Theme configuration
        ├── mason.lua         # Package manager setup
        ├── mini-*.lua        # Mini.nvim plugins
        ├── nvim-lint.lua     # Linter setup
        ├── nvim-lsp.lua      # LSP configuration
        ├── nvim-treesitter.lua
        ├── nvim-ufo.lua      # Code folding
        ├── oil.lua           # Oil file manager
        ├── snacks.lua        # Snacks utilities
        ├── todo-comment.lua  # Todo comments
        ├── undotree.lua      # Undo tree
        └── init.lua          # Plugin loader
```

## Requirements

- Neovim >= 0.12
- Git (for plugin management)

## Installation

1. **Clone or copy this configuration** to your Neovim config directory:
   ```bash
   # On Linux/macOS
   git clone <repo-url> ~/.config/nvim
   
   # Or copy your config files to ~/.config/nvim
   ```

2. **Start Neovim**:
   ```bash
   nvim
   ```

## Server Installation

This configuration supports multiple language servers, formatters, and linters. **These tools are NOT automatically installed** and must be set up manually.

### Installation Methods

You have two main options for installing servers:

#### Option 1: Using Mason (`:Mason` command)
Mason provides an interactive UI for installing and managing language servers:

```vim
:Mason
```

This opens an interactive window where you can browse, install, and manage servers.

#### Option 2: Manual Installation
Install servers using your system package manager, npm, pip, or other methods:

**Examples:**

```bash
# Python (using pip)
pip install python-lsp-server

# Node.js based tools (using npm)
npm install -g @eslint/eslintrc @typescript-eslint/parser

# Bash/Shell (using package manager)
sudo apt install shellcheck  # Ubuntu/Debian
brew install shellcheck       # macOS

# Lua
# Download from: https://github.com/LuaLS/lua-language-server
```

### Supported Language Servers

- **Bash**: `bash-language-server`
- **HTML**: `html-language-server`, with **Emmet** support
- **JSON**: `json-language-server`
- **Lua**: `lua-language-server`
- **Markdown**: `marksman`
- **Python**: `pylsp`, `pyright`, or similar
- **Tailwind CSS**: `tailwindcss-language-server`
- **TypeScript/JavaScript**: `typescript-language-server`

### Supported Formatters

Available formatters (configure as needed):
- `prettier` - JavaScript, TypeScript, JSON, CSS, Markdown
- `black` - Python
- `stylua` - Lua
- `shfmt` - Shell scripts
- `clang-format` - C/C++

### Supported Linters

Available linters (configure as needed):
- `eslint` - JavaScript/TypeScript
- `pylint`, `flake8` - Python
- `shellcheck` - Shell scripts
- `luacheck` - Lua

## Key Mappings

Common keybindings (see `lua/configs/keymaps.lua` for full list):

| Keybinding | Action |
|-----------|--------|
| `<Space>` | Leader key |
| `<leader>o` | Update and source current file |
| `<leader>w` | Save buffer |
| `<leader>q` | Quit Neovim |
| `<Esc>` | Clear search highlight |
| `<leader>bn` | Next buffer |
| `<leader>bp` | Previous buffer |
| `<leader>d` | Delete without yanking |
| `<C-j>` | Move line down |
| `<C-u>` | Page up (centered) |
| `<C-d>` | Page down (centered) |

## Configuration

### Editor Options
Edit `lua/configs/options.lua` to customize:
- Tab size and indentation
- Line numbering
- Relative line numbers
- And more

### Keymaps
Edit `lua/configs/keymaps.lua` to customize key bindings.

### Autocommands
Edit `lua/configs/autocmd.lua` to add or modify autocommands.

### Terminal
Edit `lua/configs/terminal.lua` to configure terminal behavior.

## Customization

This configuration is modular by design:

- **Add a plugin**: Create a new file in `lua/plugins/`
- **Add LSP support**: Create a new file in `lua/lsp/`
- **Add keybindings**: Edit or extend `lua/configs/keymaps.lua`
- **Add autocommands**: Edit or extend `lua/configs/autocmd.lua`

All `.lua` files in the respective directories are automatically loaded.

## Troubleshooting

### LSP not working
- Check that the language server is installed: `:Mason`
- Verify the server is running: `:LspInfo`
- Check logs: `:LspLog`

### Formatter not working
- Check available formatters: `:ConformInfo`
- Verify the formatter is installed
- Check formatter configuration in `lua/plugins/conform.lua`

### Linter not working
- Check linter configuration: `lua/plugins/nvim-lint.lua`
- Verify linter is installed and in PATH

## Resources

- [Neovim Documentation](https://neovim.io/doc/user/)
- [Nvim-LSP Configuration](https://github.com/neovim/nvim-lspconfig)
- [Mason.nvim](https://github.com/williamboman/mason.nvim)
- [Conform.nvim](https://github.com/stevearc/conform.nvim)
- [Nvim-Lint](https://github.com/mfussenegger/nvim-lint)
- [Mini.nvim](https://github.com/nvim-mini)

## License

This configuration is provided as-is for personal use.
