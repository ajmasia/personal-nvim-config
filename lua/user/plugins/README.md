# Plugins folder

In this directory are defined the plugins that will be installed by the plugin manager: [folke/lazy.nvim](https://github.com/folke/lazy.nvim)

For better maintenance of the plugin system, the following rules apply:

- Each plugin will be defined in a separate file
- If possible, the configuration of each plugin will be defined in the folder "user.config.plugins"

Lazy will load all plugin definitions that exist in the "user.plugins" directory

## Examples

### `"user.plugins.colorschemes"

```lua
return {
  {
    -- this plugin will be loaded before tokyonight becose has more priority
	"wuelnerdotexe/vim-enfocado",
    enabled = true,
	lazy = false, -- make sure we load this during startup
	priority = 1000,
	config = function()
	  -- define the editorcolorscheme
	  vim.cmd([[colorscheme enfocado]])
	end,
  },
}
```
