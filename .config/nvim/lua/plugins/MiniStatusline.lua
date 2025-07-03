return {
	{
		"echasnovski/mini.icons",
		opts = {},
		lazy = true,
	},
	{
		"echasnovski/mini-git",
		name = "mini.git",
		opts = {},
		lazy = true,
	},
	{
		"echasnovski/mini.diff",
		opts = {},
		lazy = true,
	},
	{
		"echasnovski/mini.statusline",
		dependencies = {
			"echasnovski/mini.icons",
			"echasnovski/mini-git",
			"echasnovski/mini.diff",
		},
		opts = {},
		lazy = false,
	},
}
