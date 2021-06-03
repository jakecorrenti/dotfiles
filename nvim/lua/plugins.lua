vim.cmd('packadd packer.nvim')

return require("packer").startup(function(use)
  use({"wbthomason/packer.nvim", opt = true})

  -- Themes
  use("rktjmp/lush.nvim")
  use {"tjdevries/gruvbuddy.nvim", requires = {"tjdevries/colorbuddy.vim"}}
  use("npxbr/gruvbox.nvim")
  use("folke/tokyonight.nvim")
  use("sainnhe/edge")
  use("shaunsingh/nord.nvim")
  use("metalelf0/jellybeans-nvim")

  -- Syntax Highlighting
  use("nvim-treesitter/nvim-treesitter")

  -- LSP
  use("rust-lang/rust.vim")
  use("neovim/nvim-lspconfig")
  use("hrsh7th/nvim-compe")
  use("glepnir/lspsaga.nvim")
  use("nvim-lua/lsp_extensions.nvim")
  use("mhartington/formatter.nvim")
  use("folke/lsp-trouble.nvim")
  use("folke/lsp-colors.nvim")

  -- Git
  use("lewis6991/gitsigns.nvim")

  -- Fuzzy Finding
  use("nvim-lua/popup.nvim")
  use("nvim-lua/plenary.nvim")
  use("nvim-lua/telescope.nvim")

  -- Miscellaneous
  -- use("tjdevries/cyclist.vim")
  use("kyazdani42/nvim-web-devicons")
  use("tjdevries/express_line.nvim")
  use("mhinz/vim-startify")
  use("preservim/nerdcommenter")
  use {
    "folke/todo-comments.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  }
end)
