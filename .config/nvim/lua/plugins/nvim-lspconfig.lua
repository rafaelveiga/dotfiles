return {
    "neovim/nvim-lspconfig",
    dependencies = {{
        "mason-org/mason.nvim",
        opts = {}
    }, "mason-org/mason-lspconfig.nvim", "WhoIsSethDaniel/mason-tool-installer.nvim", {
        "j-hui/fidget.nvim",
        opts = {}
    }, "saghen/blink.cmp"},
    config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require("blink.cmp").get_lsp_capabilities()
        local servers = {
            elixirls = {},
            eslint = {}
        }
        local ensure_installed = vim.tbl_keys(servers or {})
        vim.list_extend(ensure_installed, {'stylua'})
        require('mason-tool-installer').setup {
            ensure_installed = ensure_installed
        }

        require('mason-lspconfig').setup {
            ensure_installed = {}, -- explicitly set to an empty table (Kickstart populates installs via mason-tool-installer)
            automatic_installation = false,
            handlers = {function(server_name)
                local server = servers[server_name] or {}
                -- This handles overriding only values explicitly passed
                -- by the server configuration above. Useful when disabling
                -- certain features of an LSP (for example, turning off formatting for ts_ls)
                server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
                require('lspconfig')[server_name].setup(server)
            end}
        }
    end

}
