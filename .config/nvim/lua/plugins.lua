local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup({
  -- the one and only
  { "github/copilot.vim" },

  -- editor tabs
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

  -- status line
  { "nvim-lualine/lualine.nvim" },

  -- color scheme
  { 'Mofiqul/dracula.nvim' },

   -- telescope, a fuzzy finder
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' }
  },

  -- NERDTree, a file system explorer
  { 'preservim/nerdtree' },

   -- tree sitter, a syntax tree generator
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "elixir", "eex", "heex" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },

  -- lsp, quickstart configs for nvim lsp
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
      lspconfig.elixirls.setup({
        cmd = { "elixir-ls" },
        capabilities = capabilities,
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
    end
  },

  -- cmp framework for auto-completion support
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline'
    },
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        -- add different completion source
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        }),
        -- using default mapping preset
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        snippet = {
          -- you must specify a snippet engine
          expand = function(args)
            -- using neovim v0.10 native snippet feature
            -- you can also use other snippet engines
            vim.snippet.expand(args.body)
          end,
        },
      })
    end,
  },

  -- indent lines
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
})

require("bufferline").setup{}
require("lualine").setup{}
require("ibl").setup{}
