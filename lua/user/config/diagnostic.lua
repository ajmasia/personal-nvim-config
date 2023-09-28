local icons = require "user.config.default".icons
local diagnostics = require "user.config.default".lsp.diagnostics

-- set diagnostic icons
for type, icon in pairs(icons.diagnostic) do
  local hl = "DiagnosticSign" .. type

  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

if type(diagnostics.virtual_text) == "table" and diagnostics.virtual_text.prefix == "icons" then
  ---@diagnostic disable-next-line: assign-type-mismatch
  diagnostics.virtual_text.prefix = vim.fn.has("nvim-0.10.0") == 0 and "●"
    or function(diagnostic)
      for d, icon in pairs(icons) do
        if diagnostic.severity == vim.diagnostic.severity[d:upper()] then
          return icon
        end
      end
    end
end

vim.diagnostic.config(vim.deepcopy(diagnostics))

