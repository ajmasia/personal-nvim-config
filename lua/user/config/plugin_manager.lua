-- Plugin manager settings | https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

local ok, lazy = pcall(require, 'lazy')

if not ok then
  print("ERROR: An error occurred while loading the plugin manager: " .. lazy)
else
  lazy.setup {
    spec = {
      -- import/override defined plugins
      { import = "user.plugins" }
    },
    defaults = {
      -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup
      -- If you know what you're doing, you can set this to `true` to have all your custom plugins 
      -- lazy-loaded by default
      lazy = false,
      -- It's recommended to leave version=false for now, since a lot the plugin that support versioning
      -- have outdated releases, which may break your Neovim install
      -- version = "*", -- try installing the latest stable version for plugins that support semver
      version = false, -- always use the latest git commit
    },
    install = {
      -- install missing plugins on startup. This doesn't increase startup time.
      missing = true,
      -- try to load one of these colorschemes when starting an installation during startup
      colorscheme = { "tokyonight", "enfocado"},
    },
    checker = {
      -- automatically check for plugin updates
      enabled = true,
      concurrency = nil, ---@type number? set to 1 to check for updates very slowly
      notify = true, -- get a notification when new updates are found
      frequency = 3600*24, -- check for updates every hour
    },
    performance = {
      cache = {
        enabled = true,
      },
      reset_packpath = true, -- reset the package path to improve startup time
      rtp = {
        reset = true, -- reset the runtime path to $VIMRUNTIME and your config directory
        paths = {}, -- add any custom paths here that you want to includes in the rtp
        disabled_plugins = {
          "gzip",
          -- "matchit",
          -- "matchparen",
          -- "netrwPlugin",
          -- "tarPlugin",
          "tohtml",
          -- "tutor",
          "zipPlugin",
        },
      },
    },
    change_detection = {
      enabled = false,  -- automatically check for config file changes and reload the ui
      notify = true,    -- get a notification when changes are found
    },
  }
end
