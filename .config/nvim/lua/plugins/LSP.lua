return {
	{
		"mason-org/mason.nvim",
		opts = {},
		lazy = true,
		cmd = { "Mason" },
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim" },
		opts = { automatic_enable = false, ensure_installed = { "lua_ls", "basedpyright", "marksman" } },
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
			"mason-org/mason-lspconfig.nvim",
			"echasnovski/mini.completion",
		},
		opts = {},
		config = function()
			vim.lsp.config("basedpyright", {
				settings = { basedpyright = { typeCheckingMode = "standard" } },
			})
			vim.lsp.enable({ "lua_ls", "basedpyright", "marksman" })
		end,
		lazy = true,
		ft = { "lua", "python", "markdown" },
		keys = {
			{ "gd", vim.lsp.buf.definition, desc = "LSP Go to Definition" },
			{ "gD", vim.lsp.buf.declaration, desc = "LSP Go to Declaration" },
			{ "<leader>cd", vim.diagnostic.open_float, desc = "Line Diagnostics" },
		},
	},
}
