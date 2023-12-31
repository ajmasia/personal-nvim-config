return {
  "neovim/nvim-lspconfig",
  enabled = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "jose-elias-alvarez/null-ls.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "jay-babu/mason-null-ls.nvim",
  },
  event = { "BufReadPre", "BufNewFile" },
  main = "user.config.plugins.lsp",
  opts = {},
}

