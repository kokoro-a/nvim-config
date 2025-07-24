require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ruff", "pyright" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
