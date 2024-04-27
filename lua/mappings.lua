require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>fm", ":lua require('conform').format()<CR>", { desc = "Format Buffer"})
map({"n", "i", "v"}, "<D-p>", ":Telescope find_files<CR>", { desc = "Find files like vscode" })
map({"n", "i", "v"}, "<A-p>", ":Telescope find_files<CR>", { desc = "Find files like vscode" })

