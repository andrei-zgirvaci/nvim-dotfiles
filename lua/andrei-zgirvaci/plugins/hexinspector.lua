return {
  "Punity122333/hexinspector.nvim",
  cmd = { "HexEdit", "HexInspect" },
  keys = {
    { "<leader>hx", function() require("hexinspector").open() end },
  },
  opts = {
    colors = {
      bg = "NONE",
      info_bg = "NONE",
    },
    bytes_per_line = 2
  },
}
