return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {
			keymaps = {
                ["q"] = { "actions.close", mode = "n" },
			},
			float = { max_width = 0.4, max_height = 0.4 },
		},
		lazy = false,
		keys = {
			{
				"<leader>e",
				":Oil --float<CR>",
				mode = "n",
				desc = "Explore files",
			},
			{
				"<leader>E",
				":Oil --float .<CR>",
				mode = "n",
				desc = "Explore files from cwd",
			},
		},
	},
}
