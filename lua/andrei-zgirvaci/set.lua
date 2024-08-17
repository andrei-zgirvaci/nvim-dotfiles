-- Enable line numbers
vim.opt.number = true          -- Show absolute line numbers
vim.opt.relativenumber = true  -- Show relative line numbers

-- Highlight the current line
vim.opt.cursorline = true      -- Highlight the line where the cursor is located

-- Set tab and indentation options
vim.opt.tabstop = 2            -- Number of spaces that a <Tab> in the file counts for
vim.opt.softtabstop = 2        -- Number of spaces that a <Tab> counts for while editing
vim.opt.shiftwidth = 2         -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true       -- Convert tabs to spaces

-- Scroll options
vim.opt.scrolloff = 10         -- Minimum number of screen lines to keep above and below the cursor

-- Sign column
vim.opt.signcolumn = 'yes'     -- Always show the sign column, to prevent text shifting

-- Command line height
vim.opt.cmdheight = 0          -- Hide the command line by default (useful if you want to maximize the screen space)

-- Live substitution preview
vim.opt.inccommand = 'split'   -- Show the effect of :substitute as you type the command

-- Persistent undo
local undodir_path = os.getenv('HOME') .. '/.vim/undodir' 
vim.opt.undodir = undodir_path -- Set the directory where undo files will be stored
vim.opt.undofile = true        -- Save undo history to an undo file, enabling persistent undo across sessions
