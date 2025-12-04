return {
	{
		"nvim-mini/mini.files",
		enabled = true,
		opts = { mappings = { go_in = "", go_out = "", go_in_plus = "<CR>", go_out_plus = "-" } },
		lazy = false,
		keys = {
			{
				"<leader>e",
				function()
					require("mini.files").open(vim.api.nvim_buf_get_name(0), false)
				end,
				mode = "n",
				desc = "Explore files",
			},
			{
				"<leader>E",
				function()
					require("mini.files").open(vim.loop.cwd(), false)
				end,
				mode = "n",
				desc = "Explore files from cwd",
			},
		},
	},
}
