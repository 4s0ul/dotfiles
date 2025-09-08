return {
	{
		"echasnovski/mini.files",
		enabled = true,
		opts = {},
		lazy = false,
		keys = {
			{
				"<leader>e",
				function()
					require("mini.files").open(vim.api.nvim_buf_get_name(0))
				end,
				mode = "n",
				desc = "Explore files",
			},
			{
				"<leader>E",
				function()
					require("mini.files").open(vim.loop.cwd())
				end,
				mode = "n",
				desc = "Explore files from cwd",
			},
		},
	},
}
