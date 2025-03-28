-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

Util.safe_keymap_set("n", "<C-c>o", function()
  vim.cmd("BufferLineCloseOthers")
end, { desc = "Close other buffers" })

Util.safe_keymap_set("n", "<C-c>r", function()
  vim.cmd("BufferLineCloseRight")
end, { desc = "Close right tab" })

Util.safe_keymap_set("n", "<C-c>l", function()
  vim.cmd("BufferLineCloseLeft")
end, { desc = "Close left tab" })
