return {
	{
		"echasnovski/mini.pick",
		opts = {},
		lazy = true,
		keys = {
			{
				"<leader>ff",
				"<cmd>Pick files<cr>",
				mode = "n",
				desc = "Pick Files",
			},
			{
				"<leader>fg",
				"<cmd>Pick grep_live<cr>",
				mode = "n",
				desc = "Pick Text",
			},
			{
				"<leader>fb",
				"<cmd>Pick buffers<cr>",
				mode = "n",
				desc = "Pick Buffers",
			},
			{
				"<leader>fr",
				'<cmd>Pick lsp scope="references"<cr>',
				mode = "n",
				desc = "Pick References",
			},
			{
				"<leader>fp",
				"<cmd>Pick resume<cr>",
				mode = "n",
				desc = "Pick Resume",
			},
		},
	},
}
