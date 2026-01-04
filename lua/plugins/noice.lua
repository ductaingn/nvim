return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- Use vim.tbl_deep_extend to avoid breaking other LazyVim presets
      opts.presets = vim.tbl_deep_extend("force", opts.presets or {}, {
        command_palette = {
          views = {
            cmdline_popup = {
              position = { row = "50%", col = "50%" },
              size = { min_width = 60, width = "auto", height = "auto" },
            },
            popupmenu = {
              relative = "editor",
              position = { row = 23, col = "50%" },
              size = { width = 60, height = "auto", max_height = 15 },
              border = { style = "rounded", padding = { 0, 1 } },
              win_options = {
                winhighlight = { Normal = "Normal", FloatBorder = "NoiceCmdlinePopupBorder" },
              },
            },
          },
        },
      })

      opts.notify = { enabled = true, view = "snacks" }
      opts.lsp = opts.lsp or {}
      opts.lsp.signature = {
        opts = { size = { max_height = 15 } },
      }
    end,
  },
}
