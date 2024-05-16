return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "tokyonight",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = {
          function()
            return " "
          end,
        },
        lualine_b = { { "branch", color = { gui = " bold" } } },
        lualine_c = { "diff", "filename" },
        lualine_x = { "diagnostics", "filetype" },
        lualine_y = { "location" },
        lualine_z = {
          {
            "progress",
            fmt = function()
              return "%P/%L"
            end,
          },
          {
            function()
              local current_line = vim.fn.line(".")
              local total_lines = vim.fn.line("$")
              local chars =
              { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
              local line_ratio = current_line / total_lines
              local index = math.ceil(line_ratio * #chars)
              return chars[index]
            end,
            padding = { left = 0, right = 0 },
            color = "SLProgress",
            cond = nil,
          },
        },
      },
      extensions = { "neo-tree" },
    })
  end,
  event = "VimEnter",
}
