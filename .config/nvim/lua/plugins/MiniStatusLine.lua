return {
	{ "echasnovski/mini.icons", version = false, opts = {}, lazy = true },
	{ "echasnovski/mini-git", name = "mini.git", version = false, opts = {}, lazy = true },
	{ "echasnovski/mini.diff", version = false, opts = {}, lazy = true },
	{
		"echasnovski/mini.statusline",
		dependencies = {
			"echasnovski/mini.icons",
			"echasnovski/mini-git",
			"echasnovski/mini.diff",
		},
		version = false,
		opts = {},
		lazy = false,
	},
}
