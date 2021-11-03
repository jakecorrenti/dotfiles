vim.cmd "packadd packer.nvim"

return require("packer").startup(function(use)
  use { "wbthomason/packer.nvim", opt = true }

  -- Syntax Highlighting
  use "nvim-treesitter/nvim-treesitter"

  -- Telescope
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/telescope.nvim"

  -- Miscellaneous
  use "preservim/nerdcommenter"
end)
