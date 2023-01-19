require('lazy_config')
require("options")
require("keymaps");
require("telescope_conf")
require "fidget".setup {}
-- require('gitsigns').setup()
require('cmp_conf')
require "lsp_signature".setup({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    handler_opts = {
        border = "rounded"
    },
    hint_prefix = "=> ",
})
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
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
