# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Neovim configuration based on LazyVim with custom plugins and configurations. It's designed as a complete development environment with LSP, formatting, linting, and task management capabilities.

## Key Development Commands

### Code Formatting
- **StyLua**: Format Lua code according to `stylua.toml` (2-space indentation, 120 column width)
- **Prettier**: Format JS/TS files via LazyVim extras
- **shfmt**: Format shell scripts
- Run formatting: `:lua vim.lsp.buf.format()` or use LazyVim's `<leader>cf`

### Linting and Analysis
- **ESLint**: JavaScript/TypeScript linting (via LazyVim extras)
- **Semgrep**: Static analysis for Python, Go, C#, and Terraform files (runs on save)
- **bash-language-server**: Shell script analysis
- View diagnostics: Use `<leader>cd` for diagnostics list

### Task Management (Overseer)
- `<Space>mf`: Build File
- `<Space>mp`: Build Project
- `<Space>me`: Edit Tasks
- `<Space>ml`: List Tasks
- `<Space>rf`: Run File
- `<Space>rp`: Run Project

### Testing
- Test status is shown in lualine with indicators for running/pass/fail states
- Test runners are configured per-language via LSP and plugins

## Architecture

### Core Structure
- **init.lua**: Entry point that loads the lazy.nvim configuration
- **lua/config/**: Core configuration files (keymaps, options, autocmds)
- **lua/plugins/**: Custom plugin configurations organized by functionality
- **lua/plugins/extras/**: Extended plugin configurations grouped by category
- **lua/utils/**: Utility functions for colorscheme, peek functionality, etc.

### Plugin Organization
- **Base LazyVim**: Core LazyVim distribution with standard plugins
- **LazyVim Extras**: Additional LazyVim modules for coding, linting, formatting
- **Custom Plugins**: Located in `lua/plugins/` with specific functionality:
  - UI enhancements (bufferline, lualine, nightfox theme)
  - Development tools (mason, treesitter, LSP configurations)
  - Editor improvements (flash, trouble, which-key)
  - Language-specific extensions in `extras/lang/`

### Key Dependencies
- **LazyVim**: Base configuration framework
- **Mason**: LSP server, linter, and formatter installer
- **Overseer**: Task runner system (replaces AsyncTasks)
- **Trouble**: Diagnostics and quickfix list
- **Which-key**: Keybinding help and organization

## Configuration Files

### Essential Files
- `stylua.toml`: Lua formatting configuration
- `lazyvim.json`: LazyVim extras configuration
- `lazy-lock.json`: Plugin version lock file (similar to package-lock.json)

### Plugin Configuration Pattern
Each plugin follows this structure:
```lua
return {
  "plugin/name",
  config = function()
    -- Configuration here
  end,
  keys = {
    -- Key bindings here
  },
}
```

## Custom Features

### LSP Enhancements
- **Peek functionality**: `<leader>cpd/cpi/cpt` for definition/implementation/type definition
- **LSP lines**: Toggle with `<leader>uv` for inline diagnostics
- **Symbol usage**: Shows reference counts for symbols

### UI Customizations
- **Dropbar**: Breadcrumb navigation (replaces barbecue)
- **Bufferline**: Enhanced buffer management with custom keybindings
- **Nightfox**: Default colorscheme with toggle functionality
- **Terminal**: Auto-opens on startup in horizontal split

### Development Workflow
- **Auto-completion**: Via nvim-cmp with multiple sources
- **Snippet support**: Through friendly-snippets
- **Git integration**: Via lazygit and diffview
- **File navigation**: Telescope with live grep and file finding
- **Project management**: Project root detection and management

## Language-Specific Features

### Go (`extras/lang/go-custom.lua`)
- gopher.nvim for Go-specific tooling
- gotests, gomodifytags, impl, iferr integration

### JavaScript/TypeScript (`extras/lang/js-custom.lua`)
- Svelte language server support
- Package info display

### Shell (`extras/lang/shell.lua`)
- bash-language-server integration
- shfmt formatting and shellharden

### Perl (`extras/lang/perl.lua`)
- Perl language server support

## Key Bindings Philosophy

- **Leader key**: `<Space>` (Space)
- **Prefix grouping**: Related commands share prefixes (`<leader>c` for code, `<leader>g` for git, etc.)
- **Peek operations**: `<leader>cp` prefix for LSP peek functionality
- **Task management**: `<leader>m` for make/build, `<leader>r` for run
- **AI integration**: `<leader>h` for ChatGPT operations (requires OPENAI_API_KEY)

## Installation Dependencies

### Required Tools
- Neovim >= 0.8.0
- lazygit
- ripgrep and fd (for fzf-lua)
- fzf
- sqlite (for yanky.nvim on macOS)

### Optional but Recommended
- OPENAI_API_KEY environment variable for ChatGPT integration
- JetBrainsMono Nerd Font for proper icon display