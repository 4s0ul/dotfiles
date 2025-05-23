-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- Vertical navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Windows
vim.keymap.set("n", "<leader>w", "<C-w>", { desc = "Window mode" })

-- Buffers
vim.keymap.set("n", "<leader>bn", "<cmd>bn<cr>", { desc = "Buffer Next" })
vim.keymap.set("n", "<leader>bp", "<cmd>bp<cr>", { desc = "Buffer Previous" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Buffer Delete" })
vim.keymap.set("n", "<leader>bD", "<cmd>%bd<cr>", { desc = "Buffer Delete All" })
