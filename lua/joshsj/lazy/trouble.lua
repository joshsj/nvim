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
    focus = true,
    --win = {
    --  type = "main",
    --  scratch = false,
    --  win = 0,
    --  minimal = true,
    --},
    --preview = {
    --  type = "main",
    --  scratch = false,
    --  win = 0,
    --  minimal = true,
    --},
    --keys = {
    --  ["<cr>"] = "jump_close",
    --  ["<esc>"] = "jump_close",
    --}
  }
}
