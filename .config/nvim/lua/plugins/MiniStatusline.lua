return {
	{
		"nvim-mini/mini.icons",
		opts = {},
		lazy = true,
	},
	{
		"nvim-mini/mini-git",
		name = "mini.git",
		opts = {},
		lazy = true,
	},
	{
		"nvim-mini/mini.diff",
		opts = {},
		lazy = true,
	},
	{
		"nvim-mini/mini.statusline",
		dependencies = {
			"nvim-mini/mini.icons",
			"nvim-mini/mini-git",
			"nvim-mini/mini.diff",
		},
		priority = 999,
		opts = {},
		lazy = false,
	},
}
