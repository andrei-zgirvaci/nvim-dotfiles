return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    defaults = { 
      file_ignore_patterns = { 
        'lazy%-lock%.json',
        '%.lock'
      }
    }
  },
  keys = function()
    local builtin = require('telescope.builtin')

    return {
      { mode = { 'n' }, '<C-p>', builtin.git_files },
      { mode = { 'n' }, '<leader>ff', builtin.find_files },
      { mode = { 'n' }, '<leader>fs', builtin.live_grep },
      { mode = { 'n' }, '<leader>fw', builtin.grep_string },
      { mode = { 'n' }, '<leader>fg', builtin.git_bcommits },
      { mode = { 'n' }, '<leader>fh', builtin.help_tags },
      { mode = { 'n' }, '<leader>fk', builtin.keymaps },
      { mode = { 'n' }, '<leader>/', builtin.current_buffer_fuzzy_lesfind },

      -- Shortcut for searching Neovim configuration files
      { mode = { 'n' }, '<leader>fv',  function() builtin.find_files({ cwd = vim.fn.stdpath 'config' }) end }
    }
  end
}
