-- This file serves as a mount point for all user-defined configuration 

-- load editor settings
require "user.config.options"


-- ensure other configs are loaded after plugin manager starts
vim.api.nvim_create_autocmd("User", {
  group = vim.api.nvim_create_augroup("LazyVim", { clear = true }),
  pattern = "VeryLazy",
  callback = function()
    -- require "config.autocmds"
    -- require "config.usercmds"
    -- require "config.keymaps"
    -- require "user.config.diagnostic"
  end,
})

-- load plugin manager
require "user.config.plugin_manager"


