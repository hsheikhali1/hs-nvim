---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  statusline = {
    theme = "vscode"
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
