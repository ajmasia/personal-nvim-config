local utils = require "user.utils"
local telescope = require "telescope.builtin"
local telescope_themes = require "telescope.themes"

local map = vim.keymap.set

local telescope_find_file_bottom = function()
  local theme = telescope_themes.get_ivy()

  theme.previewer = false
  telescope.find_files(theme)
end

local telescope_find_git_status_bottom = function()
  local theme = telescope_themes.get_ivy()

  theme.previewer = true
  telescope.git_status(theme)
end

local telescope_find_git_branches_bottom = function()
  local theme = telescope_themes.get_ivy()

  theme.previewer = true

  telescope.git_branches(theme)
end

local telescope_find_git_commits_bottom = function()
  local theme = telescope_themes.get_ivy()

  theme.previewer = true

  telescope.git_commits(theme)
end

local telescope_live_grep_bottom = function()
  local theme = telescope_themes.get_ivy()

  theme.previewer = true
  theme.layout_strategy = "bottom_pane"

  telescope.live_grep(theme)
end

-- toggle editor options
map("n", "<leader>td", utils.toggle_diagnostics, { desc = "Toggle Diagnostics" })

-- find
map("n", "<leader>ff", telescope_find_file_bottom, { desc = "Find files on workind directory" })
map("n", "<leader>fg", telescope_live_grep_bottom, { desc = "Live grep find" })
map("n", "<leader>fp", ":Telescope projects<cr>", { desc = "Find projects" })

-- git
map("n", "<leader>gs", telescope_find_git_status_bottom, { desc = "List Git Status" })
map("n", "<leader>gb", telescope_find_git_branches_bottom, { desc = "List Git Branches" })
map("n", "<leader>gc", telescope_find_git_commits_bottom, { desc = "List Git Commits" })
