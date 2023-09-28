local function augroup(name)
  return vim.api.nvim_create_augroup("user" .. name, { clear = true })
end

-- vim.api.nvim_create_autocmd({ "FileType", "BufReadPost" }, {
--   group = augroup("playground"),
--   pattern = { "lua" },
--   callback = function()
--     print(require "user.utils".get_attached_Servers())
--   end,
-- })
