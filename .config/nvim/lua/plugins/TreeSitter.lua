return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "lua", "vim", "vimdoc", "javascript",
		    "html", "python", "markdown", "markdown_inline"
                },
                sync_install = false,
                highlight = {enable = true},
                indent = {enable = true}
            })
        end
    }
}
