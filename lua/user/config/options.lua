-- global options
vim.g.mapleader = " "

-- nvim options
vim.o.clipboard = "unnamedplus" 	-- sync with system clipboard
vim.o.confirm = true 			-- confirm to save changes before exiting modified buffer
vim.o.mouse = ""			-- disable de mouse mode
vim.o.swapfile = false            	-- disble swap files
vim.o.signcolumn = "yes:2"        	-- enable fixed sign column and specify width
vim.o.termguicolors = true

-- editor options
vim.o.termguicolors = true        	-- true color support
vim.o.number = true			-- show numbers
vim.o.relativenumber = true		-- show relative numbers from cursor position
vim.o.expandtab = true 			-- converts tab characters into spaces
vim.o.tabstop = 2                 	-- sets the number of column spaces for a tab character
vim.o.softtabstop = 2             	-- sets the number of spaces for a tab during editing
vim.o.shiftwidth = 2              	-- sets the number of spaces for each indent level
