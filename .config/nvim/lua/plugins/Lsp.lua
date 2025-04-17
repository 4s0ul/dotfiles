return {
    {
        "williamboman/mason.nvim",
	opts = {},
    },

    {
        "williamboman/mason-lspconfig.nvim",
	opts = {ensure_installed = { "basedpyright", "marksman" },},
    },

    {
        "neovim/nvim-lspconfig",
        config = function()

            require("lspconfig").basedpyright.setup({
                settings = {
                    basedpyright = {
                        typeCheckingMode = "standard",
                    },
                },
            })

            require("lspconfig").marksman.setup({})

            -- LSP keymaps
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP Go to Definition" })
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "LSP Go to Declaration" })
            vim.keymap.set("n", "grn", vim.lsp.buf.rename, { desc = "LSP Rename" })
        end,
    },
}
