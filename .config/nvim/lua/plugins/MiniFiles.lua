return {
	{
		"echasnovski/mini.files",
		opts = {mappings={go_in='<CR>', go_out='-'}, windows={max_number=1}},
		lazy = false,
		keys = {
			{
				"<leader>e",
				function()
					require("mini.files").open()
				end,
				mode = "n",
				desc = "Explore Files",
			},
		},
	},
}
