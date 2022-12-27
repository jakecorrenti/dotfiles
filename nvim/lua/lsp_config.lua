local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
    local opts = { capabilities = capabilities }
    server:setup(opts)
end)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = false,
    virtual_text = true,
    signs = true,
    update_in_insert = true,
})

-- format on save
vim.api.nvim_exec([[
autocmd BufWritePre * silent! lua vim.lsp.buf.formatting()
]], false)
