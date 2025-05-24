return { -- Autoformat
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            lua = {'stylua'},
            elixirls = {'mix format'},
            elixir = {'mix format'},
            javascript = {'eslint'},
            typescript = {'eslint'}
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true
        }
    }
}
