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
        "%.jpg",
        "%.png",
        "%.webp",
        '%.git/',
        '%.lock',
        'yarn%-.+%.cjs'
      }
    },
    pickers = {
      find_files = {
        hidden = true,
      },
      live_grep = {
        additional_args = { '--hidden' }
      },
      grep_string = {
        additional_args = { '--hidden' }
      }
    }
  },
  keys = function()
    local builtin = require('telescope.builtin')

    return {
      { mode = { 'n' }, '<leader>fr', builtin.resume },
      { mode = { 'n' }, '<leader>ff', builtin.find_files },
      { mode = { 'n' }, '<leader>fs', builtin.live_grep },
      { mode = { 'n' }, '<leader>fw', builtin.grep_string },
      { mode = { 'n' }, '<leader>fg', builtin.git_bcommits },
      { mode = { 'n' }, '<leader>fh', builtin.help_tags },
      { mode = { 'n' }, '<leader>fk', builtin.keymaps },
      { mode = { 'n' }, '<leader>/',  builtin.current_buffer_fuzzy_lesfind },

      -- Shortcut for searching Neovim configuration files
      { mode = { 'n' }, '<leader>fv', function() builtin.find_files({ cwd = vim.fn.stdpath 'config' }) end }
    }
  end
}
