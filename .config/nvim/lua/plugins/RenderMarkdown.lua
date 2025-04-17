return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {completions = {lsp = {enabled = true}}},
        lazy = true,
        ft = "markdown",
    }
}
