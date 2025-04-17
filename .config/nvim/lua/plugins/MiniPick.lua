return {
    {
        'echasnovski/mini.pick',
        version = false,
	opts = {},
	keys = {
	    {"<leader>f", "<cmd>Pick files<cr>", mode = "n", desc = "Pick Files"},
	    {"<leader>g", "<cmd>Pick grep_live<cr>", mode = "n", desc = "Pick Text"},
	    {"<leader>b", "<cmd>Pick buffers<cr>", mode = "n", desc = "Pick Buffers"},
	    {"<leader>r", "<cmd>Pick lsp scope = 'references'<cr>", mode = "n", desc = "Pick References"},
	    {"<leader>p", "<cmd>Pick resume<cr>", mode = "n", desc = "Pick Resume"},
	}
    }
}
