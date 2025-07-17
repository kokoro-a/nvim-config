return {
  "s1n7ax/nvim-window-picker",
  version = "v2.*",
  config = function()
    local palette = require("nightfox.palette").load(vim.g.colors_name or "nightfox")
    require("window-picker").setup({
      hint = "floating-big-letter",
      autoselect_one = true,
      include_current = false,
      filter_rules = {
        -- filter using buffer options
        bo = {
          -- if the file type is one of following, the window will be ignored
          filetype = { "neo-tree-popup", "notify", "quickfix" },

          -- if the buffer type is one of following, the window will be ignored
          buftype = {},
        },
      },
      other_win_hl_color = palette.bg2 or "#3b4261",
      current_win_hl_color = palette.bg3 or "#4b5263",
    })
  end,
  keys = {
    {
      "<leader>wp",
      function()
        local picked_window_id = require("window-picker").pick_window({ include_current_win = true })
          or vim.api.nvim_get_current_win()
        vim.api.nvim_set_current_win(picked_window_id)
      end,
      desc = "Pick Window",
    },
    {
      "<leader>wx",
      function()
        local window = require("window-picker").pick_window({ include_current_win = false })
        local target_buffer = vim.fn.winbufnr(window)
        vim.api.nvim_win_set_buf(window, 0)
        vim.api.nvim_win_set_buf(0, target_buffer)
      end,
      desc = "Swap Window",
    },
  },
}
