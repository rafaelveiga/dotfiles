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
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },

  -- lsp, quickstart configs for nvim lsp
  { 'neovim/nvim-lspconfig' },

  -- cmp framework for auto-completion support
  {'hrsh7th/nvim-cmp'},

  -- install different completion source
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  {'hrsh7th/cmp-cmdline'}
})

require("bufferline").setup{}

require("plugins.treesitter")
require("plugins.lspconfig")
require("plugins.cmp")