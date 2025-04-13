-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('i', '<c-a>', '<home>', opts)
map('i', '<c-b>', '<left>', opts)
map('i', '<c-d>', '<del>', opts)
map('i', '<c-e>', '<end>', opts)
map('i', '<c-f>', '<right>', opts)
map('i', '<c-k>', '<c-o>D', opts)
map('i', '<c-n>', '<down>', opts)
map('i', '<c-p>', '<up>', opts)
