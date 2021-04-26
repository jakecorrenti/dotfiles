vim.api.nvim_exec([[
autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)
]], false)

vim.api.nvim_exec([[
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost * lua require'lsp_extensions'.inlay_hints{ prefix = ' » ', aligned = true, highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }
]], false)
