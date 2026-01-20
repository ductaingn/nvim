-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Function to update clangd settings and restart
local function update_clangd(type)
  vim.ui.input({ prompt = "New " .. type .. ": " }, function(input)
    if input and input ~= "" then
      if type == "Build Directory" then
        vim.g.clangd_compile_dir = input
      else
        vim.g.clangd_query_driver = input
      end
      vim.cmd("LspRestart clangd")
      vim.notify("Clangd restarted with " .. type .. ": " .. input)
    end
  end)
end

-- Set the Keymaps
vim.keymap.set("n", "<leader>cbd", function()
  update_clangd("Build Directory")
end, { desc = "Set Clangd Build Dir" })
vim.keymap.set("n", "<leader>cqd", function()
  update_clangd("Query Driver")
end, { desc = "Set Clangd Query Driver" })
