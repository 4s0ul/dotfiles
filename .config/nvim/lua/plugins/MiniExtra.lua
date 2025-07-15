return {
	{
		"echasnovski/mini.extra",
		opts = {},
		lazy = true,
		keys = {
			{
				"<leader>fr",
				function()
					require("mini.extra").pickers.lsp({ scope = "references" })
				end,
				mode = "n",
				desc = "Pick References",
			},
			{
				"<leader>fs",
				function()
					require("mini.extra").pickers.lsp({ scope = "document_symbol" })
				end,
				mode = "n",
				desc = "Pick Symbols",
			},
			{
				"<leader>f'",
				function()
					require("mini.extra").pickers.marks()
				end,
				mode = "n",
				desc = "Pick marks",
			},
			{
				'<leader>f"',
				function()
					require("mini.extra").pickers.registers()
				end,
				mode = "n",
				desc = "Pick registers",
			},
		},
	},
}
