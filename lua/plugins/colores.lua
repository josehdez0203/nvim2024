return {
  "uga-rosa/ccc.nvim",
  lazy = false,
  opts = {
    highlighter = {
      auto_enable = true,
      lsp = true,
    },
  },
  keys = {
    { "cc", "<cmd>CccPick<cr>",              desc = "Escoger color" },
    { "ct", "<cmd>CccHighlighterToggle<cr>", desc = "Alternar color" },
    { "ce", "<cmd>CccConvert<cr>",           desc = "Editar color" },
  },
}
