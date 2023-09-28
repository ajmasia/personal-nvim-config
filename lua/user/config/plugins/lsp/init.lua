local lsp_tools = require "user.utils"

local expand_lsp_options = function (options)
  -- import cmp-nvim-lsp plugin
  local cmp_nvim_lsp = require("cmp_nvim_lsp")
  -- used to enable autocompletion (assign to every lsp server config)
  local capabilities = cmp_nvim_lsp.default_capabilities()

  return vim.tbl_deep_extend("force", {
    on_attach = require "user.config.plugins.lsp.on_attach",
    capabilities = capabilities,
    -- flags = require "use.plugins.config.lsp.flags",
    }, options)
end

return {
  -- lsp_plugin_opts from plugin definition opts value
  setup = function(lsp_plugin_opts)
    local lspconfig = require "lspconfig"
    local user_lsp_options = require "user.config.default".lsp

    -- extend plugin_options with user options defined from user.plugins.config.lsp.options module
    local lsp_options = vim.tbl_deep_extend("force", user_lsp_options, lsp_plugin_opts)
    local mason_servers = {}

    -- setup servers usuing lspconfig plugin
    for server, options in pairs(lsp_options.servers) do
      if options.enable == true then
        local ok, definition = pcall(require, "user.config.plugins.lsp.custom_servers." .. server)
        local server_options

        -- define server options
        -- check if exist custom server settings on lsp.servers folder
        if not ok then
          -- define default lspconfig settings
          server_options = expand_lsp_options(options)
        else
          -- define custom server settings from lsp.servers file
          -- expanded options must to be added in the custom settings
          server_options = definition(options)
        end

        -- set server options
        lspconfig[server].setup(server_options)

        -- add server to mason server table discarting the server_black_list
        if not lsp_tools.contains(user_lsp_options.mason.servers_black_list, server) then
          table.insert(mason_servers, server)
        end
      end
    end

    require "user.config.plugins.lsp.null_ls"

    if lsp_options.mason.enable == true then
      local mason = require "mason"
      local mason_lspconfig = require "mason-lspconfig"

      local mason_options = lsp_options.mason.options
      local mason_lspconfig_options = {}

      if lsp_options.mason.auto_install == true then
        mason_lspconfig_options.ensure_installed = mason_servers
      end

      mason.setup(mason_options)
      -- set mason-lspconfig using defined mason options
      mason_lspconfig.setup(mason_lspconfig_options)
    end
  end,
}

