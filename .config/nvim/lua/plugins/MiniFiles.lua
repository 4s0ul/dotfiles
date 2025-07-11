return {
	{
		"echasnovski/mini.files",
		priority = 998,
		opts = {
			mappings = {
				go_in = "<CR>",
				go_out = "-",
			},
			windows = {
				max_number = 1,
			},
		},
		lazy = false,
		keys = {
			{
				"<leader>e",
				function()
					require("mini.files").open(vim.api.nvim_buf_get_name(0))
				end,
				desc = "Open mini.files in directory of current file",
			},
			{
				"<leader>E",
				function()
					require("mini.files").open(nil, false)
				end,
				desc = "Open mini.files in cwd",
			},
		},
	},
}
