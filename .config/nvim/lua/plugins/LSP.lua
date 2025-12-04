return {
	{
		"mason-org/mason.nvim",
		opts = {},
		lazy = true,
		cmd = { "Mason" },
	},
	{
		"nvim-mini/mini.snippets",
		opts = {},
		lazy = true,
	},
	{
		"nvim-mini/mini.completion",
		dependencies = { "nvim-mini/mini.snippets" },
		opts = {},
		lazy = true,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
						workspace = { checkThirdParty = false },
						telemetry = { enable = false },
					},
				},
			})
			vim.lsp.config("basedpyright", {
				settings = { basedpyright = { typeCheckingMode = "standard" } },
			})
			vim.lsp.config("marksman", {})
		end,
		lazy = true,
		keys = {
			{ "gd", vim.lsp.buf.definition, desc = "LSP Go to Definition" },
			{ "gD", vim.lsp.buf.declaration, desc = "LSP Go to Declaration" },
			{ "<leader>cd", vim.diagnostic.open_float, desc = "Line Diagnostics" },
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
			"nvim-mini/mini.completion",
		},
		opts = { automatic_enable = true, ensure_installed = { "lua_ls", "basedpyright", "marksman" } },
		lazy = true,
		ft = { "lua", "python", "markdown" },
	},
}
