local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- _ represent client data
return function(_, buffer)
  local filetype = vim.api.nvim_buf_get_option(0, "filetype")

  opts.buffer = buffer
  opts.desc = "Show line diagnostics"

  keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line
end

