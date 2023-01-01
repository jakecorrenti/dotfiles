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
