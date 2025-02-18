return {
    { 'williamboman/mason.nvim', opts = {} },
    { 'neovim/nvim-lspconfig' },
    { "j-hui/fidget.nvim",       opts = {} },
    {
        'nvim-treesitter/nvim-treesitter',
        version = false,
        build = ':TSUpdate',
        lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the command line
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
        ensure_installed = {
            'c',
            'diff',
            'bash',
            'lua',
            'json',
            'toml',
            'rust',
            'go',
            'yaml',
            'markdown',
        },
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            "nvim-lua/popup.nvim",
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                run = 'make',
                cond = vim.fn.executable "make" == 1
            }
        },
        opts = {},
    },
    { 'echasnovski/mini.starter',     version = '*', opts = {} },
    { 'echasnovski/mini.completion',  version = '*', opts = {} },
    { 'echasnovski/mini.files',       version = '*', opts = {} },
    { 'protesilaos/tempus-themes-vim' },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    { 'ishan9299/nvim-solarized-lua'}
}
