-- Options

vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"
vim.o.pumborder = "rounded"
vim.o.clipboard = "unnamedplus"
vim.o.smartindent = true
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.swapfile = false
vim.o.backup = false

vim.g.mapleader = " "

-- Plugins

vim.pack.add({
	"https://github.com/catppuccin/nvim",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/nvim-mini/mini.icons",
	"https://github.com/nvim-mini/mini-git",
	"https://github.com/nvim-mini/mini.diff",
	"https://github.com/nvim-mini/mini.statusline",
	"https://github.com/nvim-mini/mini.completion",
	"https://github.com/nvim-mini/mini.pairs",
	"https://github.com/nvim-mini/mini.surround",
	"https://github.com/nvim-mini/mini.extra",
	"https://github.com/nvim-mini/mini.ai",
	"https://github.com/nvim-mini/mini.pick",
	"https://github.com/nvim-mini/mini.files",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/stevearc/conform.nvim",
})

vim.cmd.colorscheme("catppuccin-mocha")
require("vim._core.ui2").enable()
require("nvim-treesitter").update()
require("mini.icons").setup()
require("mini.git").setup()
require("mini.diff").setup()
require("mini.statusline").setup()
require("mini.completion").setup()
require("mini.pairs").setup()
require("mini.surround").setup()
require("mini.extra").setup()
require("mini.ai").setup()
require("mini.pick").setup()
require("mini.files").setup({ mappings = { go_in = "", go_out = "", go_in_plus = "<cr>", go_out_plus = "-" } })
require("mason").setup()
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		markdown = { "prettier" },
	},
	format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
})

vim.lsp.enable({ "lua_ls", "marksman" })

-- Keymaps

vim.keymap.set("n", "<leader><leader>", "<C-^>") -- Alternate files
vim.keymap.set("n", "gd", vim.lsp.buf.definition) -- Go to definition
vim.keymap.set("n", "gD", vim.lsp.buf.declaration) -- Go to declaration
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float) -- Open diagnostics
vim.keymap.set("n", "<leader>ff", "<cmd>Pick files<cr>") -- Pick files
vim.keymap.set("n", "<leader>fb", "<cmd>Pick buffers<cr>") -- Pick buffers
vim.keymap.set("n", "<leader>fg", "<cmd>Pick grep_live<cr>") -- Grep live
vim.keymap.set("n", "<leader>fp", "<cmd>Pick resume<cr>") -- Pick resume
vim.keymap.set("n", "<leader>fr", '<cmd>Pick lsp scope="references"<cr>') -- Pick references
vim.keymap.set("n", "<leader>fd", '<cmd>Pick diagnostic scope="all"<cr>') -- Pick diagnostics
vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0), false)<cr>") -- Reveal current file
vim.keymap.set("n", "<leader>E", "<cmd>lua MiniFiles.open(nil, false)<cr>") -- Explore files from cwd

-- Autocmds

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "bash" },
	callback = function()
		vim.treesitter.start()
	end,
})

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "Search" })
	end,
})
