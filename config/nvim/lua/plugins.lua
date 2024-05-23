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

  -- indent lines
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },  

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

-- indentlines
require("ibl").setup()

-- status line
require("plugins.lualine");

-- lsp setup
require("plugins.lsp")

-- mason setup
require("plugins.mason");

-- prettier setup
require("plugins.prettier");

-- autocompletion setup
require("plugins.cmp")
