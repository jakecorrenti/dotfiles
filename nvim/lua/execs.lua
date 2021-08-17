-- vim.api.nvim_exec([[
-- autocmd BufWritePre * silent! lua vim.lsp.buf.formatting_sync(nil, 100)
-- ]], false)

vim.api.nvim_exec([[
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost * lua require'lsp_extensions'.inlay_hints{ prefix = ' » ', aligned = true, highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }
]], false)

vim.api.nvim_exec([[
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
]], false)
