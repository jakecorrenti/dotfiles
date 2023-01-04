local vim = vim
-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--single-branch",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
    -- colorscheme
    'Yazeed1s/oh-lucy.nvim',

    -- lsp
    "rust-lang/rust.vim",
    "neovim/nvim-lspconfig",
    'j-hui/fidget.nvim',
    'ray-x/lsp_signature.nvim',
    { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" },
    "folke/trouble.nvim",
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'simrat39/rust-tools.nvim',
    'mfussenegger/nvim-dap',

    -- treesitter
    "nvim-treesitter/nvim-treesitter",

    -- git
    { "sindrets/diffview.nvim", requires = { "nvim-lua/plenary.nvim" } },
    'lewis6991/gitsigns.nvim',

    -- Telescope
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-lua/telescope.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable "make" == 1 },

    -- Miscellaneous
    "numToStr/Comment.nvim",
    "mhinz/vim-startify",
    'tamton-aquib/staline.nvim',

    -- cmp
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-path",
})
