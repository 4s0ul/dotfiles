return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"c",
				"lua",
				"javascript",
				"html",
				"python",
				"markdown",
				"markdown_inline",
                "sql",
                "json",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
		lazy = true,
		ft = { "c", "lua", "javascript", "html", "python", "markdown" , "sql", "json"},
	},
}
