local opt = vim.opt

-- global options
vim.g.mapleader = " "

-- general options
opt.clipboard = "unnamedplus" -- sync with system clipboard
opt.confirm = true -- confirm to save changes before exiting modified buffer
opt.mouse = "a" -- enable de mouse mode
opt.swapfile = false -- disble swap files
opt.signcolumn = "yes:1" -- enable fixed sign column and specify width
opt.termguicolors = true -- Enables 24-bit RGB color support in the terminal

opt.undolevels = 10000 -- Sets the maximum number of changes that can be undone
opt.laststatus = 0 -- hide native statusline
opt.cmdheight = 1

opt.shortmess:append({ W = true, I = true, c = true })
-- configure session to save open buffers, current directory, tab layout, and window sizes
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.showmode = false -- Dont show mode since we have a statusline

-- editor options
opt.termguicolors = true -- true color support
opt.number = true -- show numbers
opt.relativenumber = true -- show relative numbers from cursor position
opt.expandtab = true -- converts tab characters into spaces
opt.tabstop = 2 -- sets the number of column spaces for a tab character
opt.softtabstop = 2 -- sets the number of spaces for a tab during editing
opt.shiftwidth = 2 -- sets the number of spaces for each indent level
opt.cursorline = true -- enable highlighting of the current line
