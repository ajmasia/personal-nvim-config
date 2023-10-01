return {
  "nvim-lualine/lualine.nvim",
  enabled = true,
  event = "VeryLazy",
  dependencies = { "kyazdani42/nvim-web-devicons" },
  config = function()
    require "user.config.plugins.lualine"
  end,
}
