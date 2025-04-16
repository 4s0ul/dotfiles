return {
    {
        'echasnovski/mini.extra',
        version = false,
        config = function()
	    local MiniExtra = require("mini.extra")
            vim.keymap.set("n", "<leader>r", function() MiniExtra.pickers.lsp({scope="references"}) end, {desc = "Pick References"})
        end
    }
}
