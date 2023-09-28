return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",       -- autocompletes from current buffer 
    "hrsh7th/cmp-path",         -- source for file system paths
    "hrsh7th/cmp-nvim-lsp",     -- integrates LSP completions with cmp
    "L3MON4D3/LuaSnip",         -- snippet engine
    "onsails/lspkind.nvim",     -- vs-code like pictograms
  },
  config = function()
    require "user.config.plugins.nvim_cmp"
  end,
}

