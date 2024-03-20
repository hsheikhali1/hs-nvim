---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  statusline = {
    theme = "vscode",
  },
  cmp = {
    icons = true,
    lspkind_text = true,
    style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
  },
  hl_override = {
    FoldColumn = {
      bg = "black",
    },
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

return M
