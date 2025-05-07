return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = { latex = { enabled = false }, completions = { lsp = { enabled = true } } },
		lazy = true,
		ft = "markdown",
	},
}
