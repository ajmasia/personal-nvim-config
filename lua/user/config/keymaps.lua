local utils = require "user.utils"
local map = vim.keymap.set


map("n", "<leader>td", utils.toggle_diagnostics, { desc = "Toggle Diagnostics" })

