require("config.lazy")
require("catppuccin").setup()
require("nvim-treesitter").setup()
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"basedpyright", "marksman"}
})
require("lspconfig").basedpyright.setup({
    settings = {basedpyright = {typeCheckingMode = "standard"}}
})
require("lspconfig").marksman.setup({})
require('render-markdown').setup({completions = {lsp = {enabled = true}}})
require("mini.completion").setup()
require("mini.icons").setup()
require("mini.git").setup()
require("mini.diff").setup()
require("mini.statusline").setup()
require("mini.pairs").setup()
require("mini.surround").setup()
require("mini.pick").setup({mappings = {move_down = '<C-j>', move_up = '<C-k>'}})
require("mini.ai").setup()
require("mini.extra").setup()
