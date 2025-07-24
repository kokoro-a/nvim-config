require "nvchad.autocmds"

vim.cmd("cabbrev pm ProjectMgr")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      require("lazy").load({ plugins = { "nvim-tree.lua" } })
      vim.cmd("NvimTreeOpen")
    end
  end,
})
