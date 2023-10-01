return {
  'nvim-telescope/telescope.nvim',
  enabled = true,
  -- or                              , branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim', build = 'make'
    },
    {
      "ahmedkhalf/project.nvim",
      event = "VeryLazy",
      config = function()
        require "user.config.plugins.project_nvim"
      end,
    },

  },
  -- event = "VeryLazy",
  config = function()
    require "user.config.plugins.telescope"
  end,
}
