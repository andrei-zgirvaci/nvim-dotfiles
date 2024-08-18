return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-tree/nvim-web-devicons', lazy = true }
  },
  config = function()
    require('telescope').setup()

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-p>', builtin.git_files)
    vim.keymap.set('n', '<leader>ff', builtin.find_files)
    vim.keymap.set('n', '<leader>fs', builtin.live_grep)
    vim.keymap.set('n', '<leader>fw', builtin.grep_string)
    vim.keymap.set('n', '<leader>fg', builtin.git_bcommits)
    vim.keymap.set('n', '<leader>fh', builtin.help_tags)
    vim.keymap.set('n', '<leader>fk', builtin.keymaps)
    vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find)

    -- Shortcut for searching Neovim configuration files
    vim.keymap.set('n', '<leader>fv', function()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
      end
    )
  end
}
