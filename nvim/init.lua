require('lazy_config')
require("options")
require("keymaps");
require("telescope_conf")
require "fidget".setup {}
require('gitsigns').setup()
require "lsp_signature".setup({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    handler_opts = {
        border = "rounded"
    },
    hint_prefix = "=> ",
})
require "staline".setup {
    sections = {
        left = { '  ', 'mode', ' ', 'branch', ' ', 'lsp' },
        mid = {},
        right = { 'file_name', 'line_column' }
    },
    mode_colors = {
        i = "#d4be98",
        n = "#84a598",
        c = "#8fbf7f",
        v = "#fc802d",
    },
    defaults = {
        true_colors = true,
        line_column = " [%l/%L] :%c  ",
        branch_symbol = " "
    }
}
require("bufferline").setup {
    options = {
        numbers = "ordinal",
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = true,
    }
}
require('Comment').setup()
require('todo-comments').setup()
require('trouble').setup({
    use_diagnostic_signs = true,
    icons = false,
})

--require "staline".setup {
--sections = {
--left = { ("▁"):rep(vim.o.columns) }, -- change thickness: "_", "▁", "▂", "▃", "▄", "▅", "▆", "▇", "█"
--mid = {},
--right = {}
--},
--}

require('treesitter_config')
require('lsp_config')

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
