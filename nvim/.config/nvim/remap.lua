vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-h>", "<C-w>h", {noremap = true, silent = false})
vim.keymap.set("n", "<C-j>", "<C-w>j", {noremap = true, silent = false})
vim.keymap.set("n", "<C-k>", "<C-w>k", {noremap = true, silent = false})
vim.keymap.set("n", "<C-l>", "<C-w>l", {noremap = true, silent = false})
vim.keymap.set("n", "H", "^", {noremap = true, silent = false})
vim.keymap.set("n", "J", "5j", {noremap = true, silent = false})
vim.keymap.set("n", "K", "5k", {noremap = true, silent = false})
vim.keymap.set("n", "L", "$", {noremap = true, silent = false})

vim.keymap.set("n", ";", ":", {noremap = true, silent = false})
vim.keymap.set("n", ":", ";", {noremap = true, silent = false})
