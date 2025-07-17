-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/utils/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<leader>L")
vim.keymap.set("n", "<leader>ub", function()
  require("utils.colorscheme").ToggleColorScheme()
end, { desc = "Toggle Background" })

local opts = { noremap = true, silent = true }

vim.keymap.set("i", "<M-a>", "<Esc>ggVG<Cr>", opts)
vim.keymap.set("n", "<M-a>", "ggVG<Cr>", opts)

vim.keymap.set("n", "<leader>cpd", function()
  require("utils.peek").Peek("definition")
end, { desc = "Definition" })
vim.keymap.set("n", "<leader>cpi", function()
  require("utils.peek").Peek("implementation")
end, { desc = "Implementation" })
vim.keymap.set("n", "<leader>cpt", function()
  require("utils.peek").Peek("typeDefinition")
end, { desc = "Type Definition" })

-- Terminal mode escape mappings (consistent with better-escape.nvim)
vim.keymap.set("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("t", "jj", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("t", "kj", "<C-\\><C-n>", { desc = "Exit terminal mode" })
