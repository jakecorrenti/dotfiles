vim.api.nvim_exec(
  [[
augroup FormatAutogroup
 autocmd!
 autocmd BufWritePost *.lua FormatWrite
augroup END
]],
  true
)

vim.api.nvim_exec(
  [[
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
]],
  false
)
