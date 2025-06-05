return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"lua",
				"python",
				"markdown",
				"markdown_inline",
                "sql",
                "json",
                "yaml",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
		lazy = true,
		ft = { "c", "lua", "javascript", "html", "python", "markdown" , "sql", "json", "yaml", },
	},
}
