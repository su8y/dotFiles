-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.del("n", "<C-w>")
keymap.set("n", "dw", 'vb"_d')
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "te", ":tabedit<Return>")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- keymap.set("n", "<leader>i", function()
--   require("myfunc.lsp").toggleInlayHints()
-- end)
