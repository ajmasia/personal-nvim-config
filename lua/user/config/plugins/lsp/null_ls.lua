local null_ls = require "null-ls"
local user_formatters = require "user.config.default".lsp.formatters
local user_linters = require "user.config.default".lsp.linters

local null_ls_sources = {}

for _, formatter in ipairs(user_formatters) do
    table.insert(null_ls_sources, null_ls.builtins.formatting[formatter])
end

for _, linter in ipairs(user_linters) do
    table.insert(null_ls_sources, null_ls.builtins.formatting[linter])
end

null_ls.setup {
  sources = null_ls_sources
}
