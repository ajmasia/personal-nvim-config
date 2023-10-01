local alpha = require "alpha"
local fortune = require "alpha.fortune"

local dashboard = require("alpha.themes.dashboard")
local logo = [[

  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ 
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ 
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ 
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ 
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ 
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ 
      ]]

---@diagnostic disable-next-line: missing-parameter
dashboard.section.header.val = vim.split(logo, "\n")

dashboard.section.buttons.val = {
  dashboard.button("p", " " .. " Projects", ":Telescope projects <CR>"),
  dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
  dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
}

for _, button in ipairs(dashboard.section.buttons.val) do
  button.opts.hl = "AlphaButtons"
  button.opts.hl_shortcut = "AlphaShortcut"
end

dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.section.buttons.opts.hl = "AlphaButtons"
dashboard.section.footer.opts.hl = "AlphaFooter"
dashboard.opts.layout[1].val = 8

-- close Lazy and re-open when the dashboard is ready
if vim.o.filetype == "lazy" then
  vim.cmd.close()
  vim.api.nvim_create_autocmd("User", {
    pattern = "AlphaReady",
    callback = function()
      require("lazy").show()
    end,
  })
end

alpha.setup(dashboard.opts)

vim.api.nvim_create_autocmd("User", {
  pattern = "LazyVimStarted",
  callback = function()
    local stats = require("lazy").stats()
    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
    local cwd = vim.fn.getcwd()

    ---@diagnostic disable-next-line: undefined-field
    local nvim_version_info = vim.api.nvim_command_output("version")
    local nvim_version = nvim_version_info:match("NVIM v(%d+%.%d+%.%d+)") -- busca la versión en la salida

    dashboard.section.footer.val = "Neovim loaded "
        .. stats.count
        .. " plugins in "
        .. ms
        .. "ms\n\n"
        .. "Neovim version: "
        .. nvim_version
        .. "\n\n"
        .. "Working directory: "
        .. cwd
        .. fortune()
        .. "\n"

    pcall(vim.cmd.AlphaRedraw)
  end,
})
