return {
	{
		"echasnovski/mini.files",
		opts = { mappings = { go_in = "<CR>", go_out = "-" }, windows = { max_number = 1 } },
		lazy = false,
		keys = {
			{
				"<leader>E",
				function()
					require("mini.files").open()
				end,
				mode = "n",
				desc = "Explore Files from cwd",
			},
			{
				"<leader>e",
				function()
					require("mini.files").open(vim.api.nvim_buf_get_name(0))
				end,
				mode = "n",
				desc = "Explore Files from current file",
			},
		},
	},
}
