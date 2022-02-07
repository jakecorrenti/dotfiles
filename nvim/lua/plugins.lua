vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'rebelot/kanagawa.nvim'
  use 'folke/tokyonight.nvim'
  use 'eddyekofo94/gruvbox-flat.nvim'
  use 'marko-cerovac/material.nvim'
  use 'AlessandroYorba/Alduin'
  use 'arcticicestudio/nord-vim'
  use 'tjdevries/colorbuddy.vim'
  use'tjdevries/gruvbuddy.nvim'
  use 'pineapplegiant/spaceduck'

  -- lsp
  use "rust-lang/rust.vim"
  use "neovim/nvim-lspconfig"
  use 'williamboman/nvim-lsp-installer'

  -- treesitter
  use "nvim-treesitter/nvim-treesitter"

  -- git
  use {"sindrets/diffview.nvim", requires = {"nvim-lua/plenary.nvim"}}
  use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
  -- tag = 'release' -- To use the latest release
  }

  -- Telescope
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/telescope.nvim"

  -- Miscellaneous
  use "preservim/nerdcommenter"
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

    -- cmp
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/nvim-cmp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-path"

end)

