return {
  "nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		"windwp/nvim-ts-autotag",
	},
	build = ":TSUpdate",
	event = "VeryLazy",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = { 
			"lua", "luadoc", "vim", "vimdoc", "query", "nix", "bash", 
			"typescript", "javascript", "tsx", "html", "css", 
			"json", "yaml",
			"python",
		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
		autotag = { enable = true },
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					-- this keymap permit select objects based on tree-sitter parser
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ac"] = "@conditional.outer",
					["ic"] = "@conditional.inner",
					["al"] = "@loop.outer",
					["il"] = "@loop.inner",
					["a-"] = "@comment.outer",
				},
			},
		},
	},
}
