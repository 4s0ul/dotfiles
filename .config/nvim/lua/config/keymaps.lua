-- Windows
vim.keymap.set("n", "<leader>w", "<C-w>", { desc = "Window mode" })

-- Buffers
vim.keymap.set("n", "<leader>bn", "<cmd>bn<cr>", { desc = "Buffer Next" })
vim.keymap.set("n", "<leader>bp", "<cmd>bp<cr>", { desc = "Buffer Previous" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Buffer Delete" })

-- Diagnostics
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
