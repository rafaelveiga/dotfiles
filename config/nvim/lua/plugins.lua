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

  -- neo tree
  {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
      }
  },

  -- telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' }
  }
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





