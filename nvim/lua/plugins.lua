vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use {
        -- Packer can manage itself
        'wbthomason/packer.nvim',

        -- colorscheme
        'ntk148v/vim-horizon',

        -- lsp
        "rust-lang/rust.vim",
        "neovim/nvim-lspconfig",
        'williamboman/nvim-lsp-installer',
        'j-hui/fidget.nvim',
        {
            "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
            config = function()
                require("lsp_lines").setup()
            end,
        },

        -- treesitter
        "nvim-treesitter/nvim-treesitter",

        -- git
        { "sindrets/diffview.nvim", requires = { "nvim-lua/plenary.nvim" } },

        -- Telescope
        "nvim-lua/popup.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-lua/telescope.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable "make" == 1 },

        -- Miscellaneous
        "preservim/nerdcommenter",
        "mhinz/vim-startify",

        -- cmp
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-path",

    }
end)
