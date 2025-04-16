return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "basedpyright", "marksman" },
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.basedpyright.setup({
                settings = {
                    basedpyright = {
                        typeCheckingMode = "standard",
                    },
                },
            })

            lspconfig.marksman.setup({})

            -- LSP keymaps
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP Go to Definition" })
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "LSP Go to Declaration" })
            vim.keymap.set("n", "grn", vim.lsp.buf.rename, { desc = "LSP Rename" })
        end,
    },
}
