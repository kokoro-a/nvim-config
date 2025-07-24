require "nvchad.autocmds"

vim.cmd("cabbrev pm ProjectMgr")

local function open_tree()
  require("lazy").load({ plugins = { "nvim-tree.lua" } })
  vim.cmd("NvimTreeOpen")
end

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      open_tree()
    end
  end,
})

vim.api.nvim_create_autocmd("DirChanged", {
  callback = function()
    open_tree()
  end,
})
