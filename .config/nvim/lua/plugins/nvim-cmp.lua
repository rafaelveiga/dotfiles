return {
    "hrsh7th/nvim-cmp",
    dependencies = { -- install different completion source
    "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path"},
    config = function()
        local cmp = require("cmp")
        cmp.setup({
            -- add different completion source
            sources = cmp.config.sources({{
                name = "nvim_lsp"
            }, {
                name = "buffer"
            }, {
                name = "path"
            }}),
            snippet = {
                -- you must specify a snippet engine
                expand = function(args)
                    -- using neovim v0.10 native snippet feature
                    -- you can also use other snippet engines
                    vim.snippet.expand(args.body)
                end
            }
        })
    end
}
