return {{ 
	'echasnovski/mini.pick', 
	version = false,
	config = function()
		vim.keymap.set("n", "<leader>f", ":Pick files<CR>", {desc = "Pick Files"})
		vim.keymap.set("n", "<leader>p", ":Pick grep_live<CR>", {desc = "Pick Project Lines"})
		vim.keymap.set("n", "<leader>b", ":Pick buffers<CR>", {desc = "Pick Buffers"})
	end
}}
