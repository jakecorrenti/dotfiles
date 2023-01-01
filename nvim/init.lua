require('lazy_config')
require("options")
require("keymaps");
require("telescope_conf")
require "fidget".setup {}
require('gitsigns').setup()
require('cmp_conf')
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
require('Comment').setup()
require('todo-comments').setup()
require('trouble').setup({
    use_diagnostic_signs = true,
    icons = false,
})
require('treesitter_config')
require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {"sumneko_lua", "rust_analyzer", "gopls"},
    automatic_installation = true,
})
require('mason-lspconfig').setup_handlers {
    function (server_name)
        local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
        local opts = { capabilities = capabilities }
        require("lspconfig")[server_name].setup{
            options = opts,
        }

    end,

    ["rust_analyzer"] = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
        local opts = { capabilities = capabilities }
        require("rust-tools").setup({
            server = {
                options = opts
            }
        })
    end
}
-- require('lsp_config')
-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
