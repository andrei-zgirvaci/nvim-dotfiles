-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Highlight the current line
vim.opt.cursorline = true

-- Set tab and indentation options
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Scroll options
vim.opt.scrolloff = 10

-- Command line height
vim.opt.cmdheight = 0

-- Live substitution preview
vim.opt.inccommand = 'split'

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Sets how neovim will display certain whitespace characters in the editor
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Persistent undo
local undodir_path = os.getenv('HOME') .. '/.vim/undodir' 
vim.opt.undodir = undodir_path
vim.opt.undofile = true

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)