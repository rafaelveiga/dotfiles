local lspconfig = require("lspconfig")

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.elixirls.setup {
  cmd = { "/home/rafaelveiga/.asdf/shims/elixir-ls" },
  capabilities = capabilities,
}
lspconfig.tsserver.setup {}