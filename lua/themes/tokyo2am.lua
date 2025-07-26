-- Credits to original https://github.com/tiagovla/tokyonight.nvim
-- This is modified version of it

local M = {}

M.base_30 = {
  white = "#c0caf5",
  darker_black = "#16161e",
  black = "#1a1b26", --  nvim bg
  black2 = "#1f2336",
  one_bg = "#24283b",
  one_bg2 = "#414868",
  one_bg3 = "#353b45",
  grey = "#40486a",
  grey_fg = "#565f89",
  grey_fg2 = "#4f5779",
  light_grey = "#545c7e",
  red = "#f7768e",
  baby_pink = "#DE8C92",
  pink = "#ff75a0",
  line = "#32333e", -- for lines like vertsplit
  green = "#9ece6a",
  vibrant_green = "#73daca",
  nord_blue = "#80a8fd",
  blue = "#7aa2f7",
  yellow = "#e0af68",
  sun = "#EBCB8B",
  purple = "#bb9af7",
  dark_purple = "#9d7cd8",
  teal = "#1abc9c",
  orange = "#ff9e64",
  cyan = "#7dcfff",
  statusline_bg = "#1d1e29",
  lightbg = "#32333e",
  pmenu_bg = "#7aa2f7",
  folder_bg = "#7aa2f7",
}

M.base_16 = {
  base00 = "#1a1b26",
  base01 = M.base_30.darker_black,-- "#16161e", -- black
  base02 = "#2f3549",
  base03 = M.base_30.grey, -- "#444b6a", -- bright black
  base04 = "#787c99",
  base05 = M.base_30.white, -- "#a9b1d6", -- white
  base06 = "#cbccd1",
  base07 = "#ffffff", -- "#d5d6db", -- bright white
  base08 = M.base_30.red,-- "#73daca", -- red
  base09 = "#ff9e64",
  base0A = M.base_30.yellow, -- "#0db9d7", -- yellow
  base0B = M.base_30.green, -- "#9ece6a", -- green
  base0C = "#b4f9f8",
  base0D = M.base_30.blue, -- "#2ac3de", -- blue
  base0E = "#bb9af7", -- magenta
  base0F = "#f7768e",
}

-- local term = {
--   "base01", -- black
--   "base08", -- red
--   "base0B", -- green
--   "base0A", -- yellow
--   "base0D", -- blue
--   "base0E", -- magenta
--   "base0C", -- cyan
--   "base05", -- white
--   "base03",
--   "base08",
--   "base0B",
--   "base0A",
--   "base0D",
--   "base0E",
--   "base0C",
--   "base07",
-- }

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_16.base05 },
    ["@punctuation.bracket"] = { fg = M.base_30.purple },
    ["@function.method.call"] = { fg = M.base_30.red },
    ["@function.call"] = { fg = M.base_30.blue },
    ["@constant"] = { fg = M.base_30.orange },
    ["@variable.parameter"] = { fg = M.base_30.orange },
  },
}

M.type = "dark"

return M
