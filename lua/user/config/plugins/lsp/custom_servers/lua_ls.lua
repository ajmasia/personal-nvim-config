local lsp_on_attach = require "user.config.plugins.lsp.on_attach"

-- import cmp-nvim-lsp plugin
-- local cmp_nvim_lsp = require("cmp_nvim_lsp")
-- used to enable autocompletion (assign to every lsp server config)
-- local capabilities = cmp_nvim_lsp.default_capabilities()

return function(lsp_options)
  return vim.tbl_extend("force", {
    on_attach = lsp_on_attach,
    -- capabilities = capabilities,
    settings = {
      -- custom settings for lua
      Lua = {
        -- make the language server recognize "vim" global
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
          checkThirdParty = false,
        },
      },
    },
  }, lsp_options)
end


