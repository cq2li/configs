-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
  local map = LazyVim.safe_keymap_set
  map("n", "<leader>gu", ":GitBlameOpenCommit<CR>", { desc = "Go to commit url" })
  -- Search for who calls the function under cursor (Incoming)
  map("n", "<leader>ci", "<cmd>Telescope hierarchy incoming_calls<cr>", { desc = "LSP Incoming Calls" })

  -- Search for what the function under cursor calls (Outgoing)
  map("n", "<leader>co", "<cmd>Telescope hierarchy outgoing_calls<cr>", { desc = "LSP Outgoing Calls" })
