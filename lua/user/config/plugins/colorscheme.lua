-- load user theme
local theme = require "user.config.default".theme

return function()
  vim.cmd.colorscheme(theme)
end
