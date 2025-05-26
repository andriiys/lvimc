-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local map = Util.safe_keymap_set

Util.safe_keymap_set("n", "<C-c>o", function()
  vim.cmd("BufferLineCloseOthers")
end, { desc = "Close other buffers" })

Util.safe_keymap_set("n", "<C-c>r", function()
  vim.cmd("BufferLineCloseRight")
end, { desc = "Close right tab" })

Util.safe_keymap_set("n", "<C-c>l", function()
  vim.cmd("BufferLineCloseLeft")
end, { desc = "Close left tab" })

map("n", "<leader>h", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>v", "<C-W>v", { desc = "Split Window Right", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })
