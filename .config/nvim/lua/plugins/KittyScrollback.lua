return {
	{
		"mikesmithgh/kitty-scrollback.nvim",
		opts = {},
		lazy = true,
		event = { "User KittyScrollbackLaunch" },
		cmd = {
			"KittyScrollbackGenerateKittens",
			"KittyScrollbackCheckHealth",
			"KittyScrollbackGenerateCommandLineEditing",
		},
	},
}
