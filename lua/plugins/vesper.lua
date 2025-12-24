return {
  "datsfilipe/vesper.nvim",
  priority = 1000,
  config = function()
    require("vesper").setup({
      transparent = false,
      italics = {
        comments = true,
        keywords = true,
        functions = true,
        strings = true,
        variables = true,
      },
      overides = {},
      pallete_overrides = {},
    })

    vim.cmd("colorscheme vesper")
  end,
}
