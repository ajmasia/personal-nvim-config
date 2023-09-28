return {
	{
		"folke/tokyonight.nvim",
		enabled = true,
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 2000, -- make sure to load this before all the other start plugins
    config = require "user.config.plugins.colorscheme"
	},
	{
    -- this plugin will be loaded before tokyonight becose has more priority
		"wuelnerdotexe/vim-enfocado",
    enabled = true,
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
    config = require "user.config.plugins.colorscheme"
	},
}

