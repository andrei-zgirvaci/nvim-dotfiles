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
vim.opt.showmode = false

-- Live substitution preview
vim.opt.inccommand = 'split'

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn
vim.opt.signcolumn = 'yes'

-- Sets how neovim will display certain whitespace characters in the editor
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Disable SWAP files
vim.opt.swapfile = false

-- Persistent undo
local undodir_path = os.getenv('HOME') .. '/.nvim/undodir'
vim.opt.undodir = undodir_path
vim.opt.undofile = true

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Character width line marker
vim.opt.colorcolumn = "80"

-- Spell check
vim.opt.spelllang = 'en_us'
vim.opt.spell = false

vim.filetype.add({
  extension = {
    mdx = "markdown",
  }
})
