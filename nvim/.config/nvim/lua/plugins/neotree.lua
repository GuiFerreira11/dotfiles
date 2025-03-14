return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "saifulapm/neotree-file-nesting-config",
  },
  config = function()
    require("neo-tree").setup({
        close_if_last_window = true,
        default_component_configs = {
          indent = {
            indent_size = 1,
            with_expanders = true,
          },
          modified = {
            symbol = "",
          },
          git_status = {
            symbols = {
              added     = " ",
              deleted   = " ",
              modified  = " ",
              renamed   = " ",
              untracked = " ",
              ignored   = " ",
              unstaged  = " ",
              staged    = " ",
              conflict  = " ",
            },
          },
        },
        window = {
          width = 25,
        },
        nesting_rules = require('neotree-file-nesting-config').nesting_rules,
        filesystem = {
          async_directory_scan = "never",
          scan_mode = "deep",
          check_gitignore_in_search = true,
          filtered_items = {
            force_visible_in_empty_folder = true,
            hide_dotfiles = false,
            hide_hidden = false,
            always_show_by_pattern = {
              ".env*",
            },
          },
          group_empty_dirs = true,
          follow_current_file = {
            enabled = true,
          },
        },
    })
  end,
}
