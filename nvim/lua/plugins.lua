vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim', opt = true}

<<<<<<< HEAD
  -- Theme
  use 'tjdevries/colorbuddy.vim'
  use 'tjdevries/gruvbuddy.nvim'

=======
>>>>>>> 14463833c248392b095397f4b00981d907f18ddc
  -- Syntax Highlighting
  use 'nvim-treesitter/nvim-treesitter'

  -- LSP
  use 'rust-lang/rust.vim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'tjdevries/nlua.nvim'
  use 'euclidianAce/BetterLua.vim'

<<<<<<< HEAD
  -- Git
  use 'lewis6991/gitsigns.nvim'

=======
>>>>>>> 14463833c248392b095397f4b00981d907f18ddc
  -- Fuzzy Finding
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/telescope.nvim'

  -- Miscellaneous
<<<<<<< HEAD
  use 'tjdevries/cyclist.vim'
  use 'glepnir/lspsaga.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'tjdevries/express_line.nvim'
  use 'mhinz/vim-startify'
=======
  use 'glepnir/lspsaga.nvim'
>>>>>>> 14463833c248392b095397f4b00981d907f18ddc
end)
