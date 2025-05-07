return {
	{
		"mikesmithgh/kitty-scrollback.nvim",
		opts = {},
		cmd = {
			"KittyScrollbackGenerateKittens",
			"KittyScrollbackCheckHealth",
			"KittyScrollbackGenerateCommandLineEditing",
		},
		event = { "User KittyScrollbackLaunch" },
		lazy = true,
	},
}
