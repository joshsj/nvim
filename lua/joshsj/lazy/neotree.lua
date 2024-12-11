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
        close_if_last_window = true,
        enable_git_status = true,
        name = {
            trailing_slash = true,
            use_git_status_colors = true,
        },
        window = {
            position = 'float',
            width = 150,
            mappings = {
                ['\\'] = 'close_window',
            },
        },
        default_component_configs = {
          indent = {
                indent_size = 3
            },
        },
        filtered_items = {
              visible = false,
              hide_dotfiles = false,
              hide_gitignored = true,
              hide_hidden = false,
        },
        buffers = {
              follow_current_file = {
                    enabled = true
              }
        },
        event_handlers = {
            {
              event = "neo_tree_buffer_enter",
              handler = function()
                vim.cmd("setlocal relativenumber")
              end,
            },
        }
    }
}
