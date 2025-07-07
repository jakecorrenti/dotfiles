return {
    { 'williamboman/mason.nvim', opts = {} },
    { 'neovim/nvim-lspconfig' },
    { "j-hui/fidget.nvim",       opts = {} },
    {
        'nvim-treesitter/nvim-treesitter',
        version = false,
        build = ':TSUpdate',
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
    { 'echasnovski/mini.nvim',       version = false },
    { 'echasnovski/mini.completion', version = '*',       opts = {} },
    { 'echasnovski/mini.files',      version = '*',       opts = {} },
    { "catppuccin/nvim",             name = "catppuccin", priority = 1000 },
    -- { 'protesilaos/tempus-themes-vim' },
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},
    -- },
    { "ellisonleao/gruvbox.nvim",    priority = 1000,     config = true,  opts = ... },
    { "challenger-deep-theme/vim" },
}
