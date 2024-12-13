return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  keys = {
    {
      "<leader>cd",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "[C]ode [D]iagnostics",
    }
  },
  opts = {
    warn_no_results = false,
    modes={
      diagnostics = {
        focus = false,
      }
    }
  }
}
