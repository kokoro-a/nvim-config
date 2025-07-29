return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    import = "nvchad.blink.lazyspec",
    opts = require "configs.blink",
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      filters = {
        dotfiles = false,
        git_ignored = false,
      }
    },
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },

  {
    'github/copilot.vim',
    lazy = false,
  },

  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      -- "mfussenegger/nvim-dap",
      -- "mfussenegger/nvim-dap-python", --optional
    },
    lazy = false,
    branch = "regexp", -- This is the regexp branch, use this for the new version
    ---@type venv-selector.Config
    opts = {
      -- Your settings go here
    },
  },

  {
    "djoshea/vim-autoread",
    lazy = false,
  },

  {
    'sindrets/diffview.nvim',
    lazy = false,
  },
}

