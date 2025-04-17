return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "c", "lua", "vim", "vimdoc", "javascript", "html", "python",
                "markdown", "markdown_inline"
            },
            sync_install = false,
            highlight = {enable = true},
            indent = {enable = true}
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
        lazy = false
    }
}
