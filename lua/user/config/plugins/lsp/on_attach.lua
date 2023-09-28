local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- _ represent client data
return function(_, buffer)
  local filetype = vim.api.nvim_buf_get_option(0, "filetype")

  opts.buffer = buffer
  opts.desc = "Show line diagnostics"

  keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Show line diagnostic" })
  keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { buffer = 0, desc = "LSP Code actions" })
  keymap.set("n", "<leader>cf", function()
    return vim.lsp.buf.format { async = true }
  end, {desc = "LSP (null ls) Format file"})
end

