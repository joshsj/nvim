return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  keys = {
    { '\\', function() require("oil").open(nil, { preview = { vertical = true } }) end }
  },
  config = function()
    require("oil").setup({
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      keymaps = {
        ["g?"] = false,
        ["?"] = { "actions.show_help", mode = "n" },

        ["<C-c>"] = false,
        ["\\"] = { "actions.close", mode = "n" },
      }
    });
  end
}
