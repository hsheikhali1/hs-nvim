local M = {}

M.base_16 = {
  base00 = "#13121F",
  base01 = "#2d2557", 
  base02 = "#2d294a",
  base03 = "#826aed",
  base04 = "#25233C",
  base05 = "#f8f8f2", 
  base06 = "#fafaf7", 
  base07 = "#1a1530", 
  base08 = "#F066EC", 
  base09 = "#38F0E8", 
  base0A = "#00FFAB", 
  base0B = "#32f06b",
  base0C = "#C9ECF5", 
  base0D = "#0CECDD", 
  base0E = "#ffe405",
  base0F = "#f0faff",
}

M.base_30 = {
  white = "#F8F8F2", -- active line num
  darker_black = "#191729", -- nvimtree bg
  black = "#13121F", -- active buffer tab bg
  black2 = "#0e0e17", -- inactive tab bg, line bar
  one_bg = "#23233d",
  one_bg2 = "#2b2b4c",
  one_bg3 = "#373760",
  grey = M.base_16.base01, -- line numbers
  grey_fg = M.base_16.base03, -- comments
  grey_fg2 = "#756e96",
  light_grey = "#b8c7cf",
  red = "#ff3064", -- changed git files,
  baby_pink = "#ff5fa5",
  pink = "#ff5ff5",
  line = M.base_16.base07,
  green = M.base_16.base0B,
  vibrant_green = "#00FFAB",
  nord_blue = "#38F0E8",
  blue = "#05C3FF",
  yellow = "#ffe405", -- README nvim-tree
  sun = "#d5ee11",
  purple = "#BD93F9",
  dark_purple = "#a166f6",
  teal = "#92A2D4",
  orange = "#FFB86C",
  cyan = "#0CECDD",
  statusline_bg = M.base_16.base01,
  lightbg = M.base_16.base07,
  violet = "#826aed",
  pmenu_bg = "#826aed",
  folder_bg = "#826aed",
  darkgreen = "#464a29",
  brownred = "#4a2d29",
}

M.polish_hl = {
  treesitter = {
    ["@punctuation.bracket"] = { fg = M.base_16.base0F },
    ["@parenthesis"] = { link = "@punctuation.bracket" },
  },
}

M.type = "dark"

return M
