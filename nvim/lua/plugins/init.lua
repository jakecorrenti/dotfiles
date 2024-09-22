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

    {
        "0xstepit/flow.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
}
