return {
  -- sticky header
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    event = "VeryLazy",
    config = function()
      require("treesitter-context").setup {
        enable = true,
        max_lines = 3,
        min_window_height = 20,
        line_numbers = true,
        multiline_threshold = 1,
        trim_scope = "outer",
        mode = "cursor",
        separator = nil,
        zindex = 20,
      }

      vim.keymap.set("n", "[c", function()
        require("treesitter-context").go_to_context(vim.v.count1)
      end, { silent = true, desc = "Go to context" })
    end,
  },
}
