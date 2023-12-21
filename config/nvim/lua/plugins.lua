-- require lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "github/copilot.vim" },

  -- editor tabs
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

  -- status line
  { "nvim-lualine/lualine.nvim" },

  -- color scheme
  { 'Mofiqul/dracula.nvim' },

  -- tree sitter
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },

  -- telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' }
  },

  -- NERDTree
  { 'preservim/nerdtree' },

  -- comment string
  { 'b3nj5m1n/kommentary' },

  -- lsp
  { 'neovim/nvim-lspconfig' },

  -- null ls
  { 'jose-elias-alvarez/null-ls.nvim' },

  -- mason, manages language servers
  { 'williamboman/mason.nvim' },

  -- autocompletion
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'onsails/lspkind-nvim' },
  { 'L3MON4D3/LuaSnip' },

  -- prettier
  { 'MunifTanjim/prettier.nvim' },
}

require("lazy").setup(plugins, opts)

-- plugin setup
-- ===================
-- bufferline.nvim
require("bufferline").setup{}

-- status line
require('lualine').setup {
  options = {
    theme = 'dracula-nvim'
  }
}

-- lsp setup
local lspconfig = require("lspconfig")
lspconfig.tsserver.setup {}

-- mason setup
local mason = require("mason")
mason.setup()

-- null ls setup

-- prettier setup
local prettier = require("prettier")

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})

-- autocompletion setup
local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  }),
  formatting = {
    format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
  }
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]

