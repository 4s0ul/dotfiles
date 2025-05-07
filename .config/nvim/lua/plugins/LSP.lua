return {
	{
		"williamboman/mason.nvim",
		opts = {},
		cmd = { "Mason" },
		lazy = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = { automatic_enable = false, ensure_installed = { "basedpyright", "marksman" } },
		lazy = true,
	},
	{
		"echasnovski/mini.snippets",
		opts = {},
		lazy = true,
	},
	{
		"echasnovski/mini.completion",
		dependencies = { "echasnovski/mini.snippets" },
		opts = {},
		lazy = true,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"echasnovski/mini.completion",
		},
		opts = {},
		keys = {
			{ "gd", vim.lsp.buf.definition, desc = "LSP Go to Definition" },
			{ "gD", vim.lsp.buf.declaration, desc = "LSP Go to Declaration" },
		},
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.basedpyright.setup({
				settings = { basedpyright = { typeCheckingMode = "standard" } },
			})

			lspconfig.marksman.setup({})
		end,
		lazy = true,
		ft = { "python", "markdown" },
	},
}
