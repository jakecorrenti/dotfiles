vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use({ "wbthomason/packer.nvim", opt = true })

	-- Themes
	use("tjdevries/colorbuddy.vim")
	use("tjdevries/gruvbuddy.nvim")

	use("rktjmp/lush.nvim")
	use("npxbr/gruvbox.nvim")

	use("folke/tokyonight.nvim")

	-- Syntax Highlighting
	use("nvim-treesitter/nvim-treesitter")

	-- LSP
	use("rust-lang/rust.vim")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-compe")
	use("tjdevries/nlua.nvim")
	use("euclidianAce/BetterLua.vim")
	use("glepnir/lspsaga.nvim")
	use("nvim-lua/lsp_extensions.nvim")

	-- Git
	use("lewis6991/gitsigns.nvim")

	-- Fuzzy Finding
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/telescope.nvim")

	-- Miscellaneous
	use("tjdevries/cyclist.vim")
	use("kyazdani42/nvim-web-devicons")
	use("tjdevries/express_line.nvim")
	use("mhinz/vim-startify")
	use("preservim/nerdcommenter")
end)
