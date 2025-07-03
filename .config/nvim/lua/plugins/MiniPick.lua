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
				"<cmd>Pick buffers include_current=false<cr>",
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
				"<leader>fs",
				'<cmd>Pick lsp scope="document_symbol"<cr>',
				mode = "n",
				desc = "Pick Symbols",
			},
			{
				"<leader>f'",
				"<cmd>Pick marks<cr>",
				mode = "n",
				desc = "Pick marks",
			},
			{
				'<leader>f"',
				"<cmd>Pick registers<cr>",
				mode = "n",
				desc = "Pick registers",
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
