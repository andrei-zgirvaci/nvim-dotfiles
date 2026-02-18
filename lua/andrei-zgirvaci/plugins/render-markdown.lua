return {
  'MeanderingProgrammer/render-markdown.nvim',
  version = '*',
  event = { 'BufReadPost', 'BufNewFile' },
  ft = { "markdown" },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    code = {
      sign = false,
      width = "block",
      right_pad = 1,
    },
    heading = {
      sign = false,
    },
  }
}
