-- TODO: move config from "user.config.plugins" when improve git feature

return {
	"tpope/vim-fugitive",
	cmd = { "G", "Git" },
	keys = {
    -- add here your keymaps
		{ "<leader>ga", ":Git fetch --all -p<CR>", desc = "Git fetch" },
		{ "<leader>gl", ":Git pull<CR>", desc = "Git pull" },
	},
}

