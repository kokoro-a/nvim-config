require "nvchad.autocmds"

vim.cmd("cabbrev pm ProjectMgr")

local function open_tree()
  require("lazy").load({ plugins = { "nvim-tree.lua" } })
  vim.defer_fn(function()
    vim.cmd("NvimTreeOpen")
  end, 100)
end

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      open_tree()
    end
    vim.cmd("set relativenumber")
  end,
})

vim.api.nvim_create_autocmd("DirChanged", {
  callback = function()
    open_tree()
    vim.cmd("set relativenumber")
  end,
})

-- #############################################################################
-- base46 has a bug which causes the terminal colors to not be set correctly
-- this function is a workaround to fix the terminal colors
local function fix_terminal_colors()
  vim.g.terminal_color_0  = "#151515"
  vim.g.terminal_color_1  = "#ac4142"
  vim.g.terminal_color_2  = "#90a959"
  vim.g.terminal_color_3  = "#f4bf75"
  vim.g.terminal_color_4  = "#6a9fb5"
  vim.g.terminal_color_5  = "#aa759f"
  vim.g.terminal_color_6  = "#75b5aa"
  vim.g.terminal_color_7  = "#d0d0d0"
  vim.g.terminal_color_8  = "#505050"
  vim.g.terminal_color_9  = "#ac4142"
  vim.g.terminal_color_10 = "#90a959"
  vim.g.terminal_color_11 = "#f4bf75"
  vim.g.terminal_color_12 = "#6a9fb5"
  vim.g.terminal_color_13 = "#aa759f"
  vim.g.terminal_color_14 = "#75b5aa"
  vim.g.terminal_color_15 = "#f5f5f5"
end

vim.api.nvim_create_autocmd("TermOpen", {
  callback = fix_terminal_colors,
})

vim.api.nvim_create_user_command('FixTerminalColors', fix_terminal_colors, {})

fix_terminal_colors()
-- #############################################################################
