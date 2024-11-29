return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    cmd = 'Neotree',
    keys = {
        { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    },
    opts = {
        filesystem = {
            window = {
                position = 'float',
                mappings = {
                    ['\\'] = 'close_window',
                },
            },
            hijack_netrw_behavior = 'open_default'
        },
        filtered_items = {
              visible = false,
              hide_dotfiles = false,
              hide_gitignored = true,
              hide_hidden = false,
        }
    },
    buffers = {
          follow_current_file = {
                enabled = true
          }
    }
}
