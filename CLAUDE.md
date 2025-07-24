# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal Neovim configuration based on NvChad v2.5. It serves as a user configuration repository that imports and extends the main NvChad framework. The configuration includes custom plugins, keymaps, and settings tailored for development workflow.

## Architecture

The configuration follows NvChad's modular structure:

- **init.lua**: Entry point that bootstraps lazy.nvim, loads NvChad core, and imports user plugins
- **lua/**: Contains all Lua configuration modules
  - **options.lua**: Extends `nvchad.options` with custom vim options
  - **mappings.lua**: Extends `nvchad.mappings` with custom keybindings
  - **autocmds.lua**: Extends `nvchad.autocmds` with custom autocommands
  - **chadrc.lua**: NvChad theme and UI configuration
  - **configs/**: Plugin-specific configuration files
  - **plugins/**: Custom plugin specifications and configurations

## Key Components

### Plugin Management
- Uses lazy.nvim for plugin management
- Main NvChad plugins are imported via `import = "nvchad.plugins"`
- Custom plugins are defined in `lua/plugins/`
- Plugin lockfile: `lazy-lock.json`

### Important Custom Plugins
- **claudecode.nvim**: Claude Code integration with comprehensive keybindings under `<leader>a`
- **projectmgr.nvim**: Project management (accessible via `<leader>pm` or `:pm`)
- **copilot.vim**: GitHub Copilot integration
- **nvim-treesitter-context**: Shows code context

### Custom Keybindings
- `jk` in insert/terminal mode → Escape
- `;` in normal mode → Enter command mode
- `<leader>pm` → ProjectMgr
- `<A-c>` → Focus Claude Code (works in normal, visual, and terminal modes)

### Claude Code Integration
Extensive keybinding setup for Claude Code under `<leader>a`:
- `<leader>ac` → Toggle Claude
- `<leader>af` → Focus Claude  
- `<leader>ar` → Resume Claude
- `<leader>aC` → Continue Claude
- `<leader>ab` → Add current buffer
- `<leader>as` → Send selection to Claude (visual mode)
- `<leader>aa` → Accept diff
- `<leader>ad` → Deny diff

## Configuration Management

### Theme and UI
- Theme: "tokyodark" (configured in chadrc.lua)
- UI customizations follow NvChad v3.0 structure
- Base46 cache stored in vim data directory

### Development Tools
- LSP configuration in `configs/lspconfig.lua`
- Code formatting via conform.nvim in `configs/conform.lua`
- Treesitter with basic language support (vim, lua, vimdoc, html, css)

## File Structure Pattern

When adding new functionality:
1. Plugin specifications go in `lua/plugins/`
2. Plugin configurations go in `lua/configs/`
3. Custom keymaps go in `lua/mappings.lua`
4. Custom options go in `lua/options.lua`
5. Always extend NvChad's base modules rather than replacing them

## Important Notes

- This is a user configuration, not the main NvChad repository
- Always use `require "nvchad.module"` to import base functionality before adding customizations
- The `.git` directory can be removed when cloning locally since this is meant to be forked/customized
- Plugin loading is lazy by default except where explicitly set to `lazy = false`