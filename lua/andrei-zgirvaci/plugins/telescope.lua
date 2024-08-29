return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-tree/nvim-web-devicons', lazy = true }
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
      { '<C-p>', builtin.git_files },
      { '<leader>ff', builtin.find_files },
      { '<leader>fs', builtin.live_grep },
      { '<leader>fw', builtin.grep_string },
      { '<leader>fg', builtin.git_bcommits },
      { '<leader>fh', builtin.help_tags },
      { '<leader>fk', builtin.keymaps },
      { '<leader>/', builtin.current_buffer_fuzzy_lesfind },

      -- Shortcut for searching Neovim configuration files
      { '<leader>fv', mode = { 'n' },  function() builtin.find_files({ cwd = vim.fn.stdpath 'config' }) end }
    }
  end
}
