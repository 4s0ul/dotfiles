return {
	{
		"williamboman/mason.nvim",
		opts = {},
		lazy = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"basedpyright",
				"marksman",
			},
		},
		lazy = true,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		opts = {},
		keys = {
			{ "K", vim.lsp.buf.hover, desc = "LSP Hover" },
			{ "gd", vim.lsp.buf.definition, desc = "LSP Go to Definition" },
			{ "gD", vim.lsp.buf.declaration, desc = "LSP Go to Declaration" },
			{ "grn", vim.lsp.buf.rename, desc = "LSP Rename" },
		},
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.basedpyright.setup({
				settings = {
					basedpyright = {
						typeCheckingMode = "standard",
					},
				},
			})

			lspconfig.marksman.setup({})
		end,
		lazy = true,
		ft = { "python", "markdown" },
	},
}
