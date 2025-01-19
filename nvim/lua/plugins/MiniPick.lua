return {{ 
	'echasnovski/mini.pick', 
	version = false,
	config = function()
		vim.keymap.set("n", "<leader>ff", ":Pick files<CR>", {desc = "Pick Files"})
		vim.keymap.set("n", "<leader>fp", ":Pick grep_live<CR>", {desc = "Pick Project Lines"})
		vim.keymap.set("n", "<leader>fb", ":Pick buffers<CR>", {desc = "Pick Buffers"})
	end
}}
