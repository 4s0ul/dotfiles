return {
    {
        'echasnovski/mini.pick',
        version = false,
        config = function()
	    local MiniPick = require("mini.pick")
            vim.keymap.set("n", "<leader>f", function() MiniPick.builtin.files() end, {desc = "Pick Files"})
            vim.keymap.set("n", "<leader>g", function() MiniPick.builtin.grep_live() end, {desc = "Pick Text"})
            vim.keymap.set("n", "<leader>b", function() MiniPick.builtin.buffers() end, {desc = "Pick Buffers"})
            vim.keymap.set("n", "<leader>r", ':Pick lsp scope="references"<CR>', {desc = "Pick References"})
            vim.keymap.set("n", "<leader>p", function() MiniPick.builtin.resume() end, {desc = "Pick Resume"})
        end
    }
}
