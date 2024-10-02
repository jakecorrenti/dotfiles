return {
    {'tamton-aquib/staline.nvim', opts = {
        sections = {
            left = { '  ', 'mode', ' ', 'branch', ' ', 'lsp' },
            mid = {},
            right = {'file_name', 'line_column' }
        },
        defaults = {
            true_colors = true,
            line_column = " [%l/%L] :%c  ",
            branch_symbol = " "
        }
    }},

    { 'williamboman/mason.nvim', opts = {} },
    { 'echasnovski/mini.completion', version = '*' , opts = {} },
    { 'neovim/nvim-lspconfig' },
    { "j-hui/fidget.nvim", opts = {} }
}
