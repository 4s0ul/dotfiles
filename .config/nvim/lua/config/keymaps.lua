-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Alternate files
vim.keymap.set("n", "<leader><leader>", "<C-^>", { desc = "Alternate files" })

-- Joining lines
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })

-- Vertical navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Up" })

-- Searching
vim.keymap.set("n", "n", "nzzzv", { desc = "Search next" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Search previous" })

-- Windows
vim.keymap.set("n", "<leader>w", "<C-w>", { desc = "Window mode" })

-- Buffers
vim.keymap.set("n", "<leader>bn", "<cmd>bn<cr>", { desc = "Buffer Next" })
vim.keymap.set("n", "<leader>bp", "<cmd>bp<cr>", { desc = "Buffer Previous" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Buffer Delete" })
vim.keymap.set("n", "<leader>bD", "<cmd>bd!<cr>", { desc = "Buffer Delete Unsaved" })
