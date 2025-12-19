return {
	{
		"nvim-mini/mini.pick",
		opts = { window = { prompt_caret = '█' } },
		lazy = true,
		keys = {
			{
				"<leader>ff",
				function()
					require("mini.pick").builtin.files()
				end,
				mode = "n",
				desc = "Pick Files",
			},
			{
				"<leader>fg",
				function()
					require("mini.pick").builtin.grep_live()
				end,
				mode = "n",
				desc = "Pick Text",
			},
			{
				"<leader>fb",
				function()
					require("mini.pick").builtin.buffers()
				end,
				mode = "n",
				desc = "Pick Buffers",
			},
			{
				"<leader>fp",
				function()
					require("mini.pick").builtin.resume()
				end,
				mode = "n",
				desc = "Pick Resume",
			},
		},
	},
}
