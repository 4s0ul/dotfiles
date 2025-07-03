return {
	{
		"mrjones2014/smart-splits.nvim",
		priority = 1,
		build = "./kitty/install-kittens.bash",
		opts = { at_edge = "stop", cursor_follows_swapped_bufs = true },
		lazy = false,
		keys = {
			{
				"<A-h>",
				"<cmd>SmartCursorMoveLeft<cr>",
				mode = "n",
				desc = "Move Cursor Left",
			},
			{
				"<A-j>",
				"<cmd>SmartCursorMoveDown<cr>",
				mode = "n",
				desc = "Move Cursor Left",
			},
			{
				"<A-k>",
				"<cmd>SmartCursorMoveUp<cr>",
				mode = "n",
				desc = "Move Cursor Left",
			},
			{
				"<A-l>",
				"<cmd>SmartCursorMoveRight<cr>",
				mode = "n",
				desc = "Move Cursor Left",
			},
			{
				"<C-A-h>",
				"<cmd>SmartResizeLeft<cr>",
				mode = "n",
				desc = "Resize Left",
			},
			{
				"<C-A-j>",
				"<cmd>SmartResizeDown<cr>",
				mode = "n",
				desc = "Resize Left",
			},
			{
				"<C-A-k>",
				"<cmd>SmartResizeUp<cr>",
				mode = "n",
				desc = "Resize Left",
			},
			{
				"<C-A-l>",
				"<cmd>SmartResizeRight<cr>",
				mode = "n",
				desc = "Resize Left",
			},
			{ "<A-H>", "<cmd>SmartSwapLeft<cr>", mode = "n", desc = "Swap Left" },
			{ "<A-J>", "<cmd>SmartSwapDown<cr>", mode = "n", desc = "Swap Down" },
			{ "<A-K>", "<cmd>SmartSwapUp<cr>", mode = "n", desc = "Swap Up" },
			{
				"<A-L>",
				"<cmd>SmartSwapRight<cr>",
				mode = "n",
				desc = "Swap Right",
			},
		},
	},
}
