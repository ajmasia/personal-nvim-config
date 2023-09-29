local opt = vim.o

-- global options
vim.g.mapleader = " "

-- general options
opt.clipboard = "unnamedplus" 	  -- sync with system clipboard
opt.confirm = true 			          -- confirm to save changes before exiting modified buffer
opt.mouse = "a"			              -- enable de mouse mode
opt.swapfile = false            	-- disble swap files
opt.signcolumn = "yes:2"        	-- enable fixed sign column and specify width
opt.termguicolors = true          -- Enables 24-bit RGB color support in the terminal
opt.undofile = true               -- Enables persistent undo, which saves undo history to a file
opt.undolevels = 10000            -- Sets the maximum number of changes that can be undone

-- configure session to save open buffers, current directory, tab layout, and window sizes
-- opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" } -- TODO: this option produce error on nvim start

-- editor options
opt.termguicolors = true        	-- true color support
opt.number = true			            -- show numbers
opt.relativenumber = true		      -- show relative numbers from cursor position
opt.expandtab = true 			        -- converts tab characters into spaces
opt.tabstop = 2                 	-- sets the number of column spaces for a tab character
opt.softtabstop = 2             	-- sets the number of spaces for a tab during editing
opt.shiftwidth = 2              	-- sets the number of spaces for each indent level
opt.cursorline = true             -- enable highlighting of the current line
