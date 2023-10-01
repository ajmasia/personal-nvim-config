local keymap = vim.keymap

local format_document = function()
  return vim.lsp.buf.format { async = true }
end

local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end


return function(_, _)
  -- local filetype = vim.api.nvim_buf_get_option(0, "filetype")
  -- local opts = { noremap = true, silent = true }
  --
  -- opts.buffer = buffer
  -- opts.desc = "Show line diagnostics"

  keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Show line diagnostic" })
  keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { buffer = 0, desc = "LSP Code actions" })
  keymap.set("n", "<leader>cf", format_document, { desc = "LSP (null ls) Format file" })
  keymap.set("n", "<leader>li", "<cmd>LspInfo<cr>", { desc = "Lsp Info" });
  keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = 0, desc = "LSP Rename symbol under cursor" })

  keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })

  keymap.set("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
  keymap.set("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
  keymap.set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
  keymap.set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
  keymap.set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
  keymap.set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })
end
