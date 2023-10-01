return {
  "goolord/alpha-nvim",
  enabled = true,
  event = "VimEnter",
  dependencies = { "BlakeJC94/alpha-nvim-fortune" },
  config = function()
    require "user.config.plugins.alpha_nvim"
  end
}
