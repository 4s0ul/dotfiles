return {{ 
	'echasnovski/mini.pick', 
	version = false,
	config = function()
		vim.keymap.set("n", "<leader>f", ":Pick files<CR>", {desc = "Pick Files"})
		vim.keymap.set("n", "<leader>g", ":Pick grep_live<CR>", {desc = "Pick Text"})
		vim.keymap.set("n", "<leader>b", ":Pick buffers<CR>", {desc = "Pick Buffers"})
		vim.keymap.set("n", "<leader>r", ':Pick lsp scope="references"<CR>', {desc = "Pick References"})
		vim.keymap.set("n", "<leader>p", ":Pick resume<CR>", {desc = "Pick Resume"})
	end
}}
