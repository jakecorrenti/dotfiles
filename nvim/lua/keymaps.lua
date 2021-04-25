local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

local vim = vim

key_mapper('i', 'jk', '<ESC>')

-- Tabs
key_mapper('n', '<leader>t', ':tabnew <CR>')
key_mapper('n', '<leader>q', ':tabclose <CR>')


-- terminal navigation
vim.cmd[[
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap jk <C-\><C-n>
]]

-- Rust
key_mapper('n', '<leader>,', ':Cargo run <CR>')
key_mapper('n', '<leader>.', ':Cargo build <CR>')

-- window navigation
key_mapper('n', '<C-j>', '<C-w>j')
key_mapper('n', '<C-h>', '<C-w>h')
key_mapper('n', '<C-k>', '<C-w>k')
key_mapper('n', '<C-l>', '<C-w>l')
key_mapper('n', '<leader>-', ':resize -10 <CR>')
key_mapper('n', '<leader>+', ':resize +10 <CR>')
key_mapper('n', '<leader>>', ':vertical resize +10 <CR>')
key_mapper('n', '<leader><', ':vertical resize -10 <CR>')

-- window splitting
key_mapper('n', '<leader>v', ':vsp <CR>')
key_mapper('n', '<leader>s', ':sp <CR>')

-- telescope
key_mapper('n', '<leader>p', ':lua require"telescope.builtin".find_files()<CR>')
key_mapper('n', '<leader>g', ':lua require"telescope.builtin".git_files()<CR>')
key_mapper('n', '<leader>l', ':lua require"telescope.builtin".live_grep()<CR>')
key_mapper('n', '<leader>h', ':lua require"telescope.builtin".help_tags()<CR>')
key_mapper('n', '<leader>b', ':lua require"telescope.builtin".buffers()<CR>')

-- lsp
key_mapper('n', 'gD', ':lua vim.lsp.buf.declaration() <CR>')
key_mapper('n', 'gd', ':lua vim.lsp.buf.definition() <CR>')
key_mapper('n', 'gi', ':lua vim.lsp.buf.implementation() <CR>')
key_mapper('n', '<C-s>', ':lua vim.lsp.buf.signature_help() <CR>')
key_mapper('n', '<space>D', ':lua vim.lsp.buf.type_definition() <CR>')
key_mapper('n', 'gr', ':lua vim.lsp.buf.references() <CR>')
key_mapper('n', '<space>e', ':lua vim.lsp.diagnostic.show_line_diagnostics() <CR>')
key_mapper('n', '<space>f', ':lua vim.lsp.buf.formatting() <CR>')

-- Compe
vim.cmd[[inoremap <silent><expr> <C-Space> compe#complete()]]
vim.cmd[[inoremap <silent><expr> <CR>      compe#confirm('<CR>')]]
vim.cmd[[inoremap <silent><expr> <C-e>     compe#close('<C-e>')]]
vim.cmd[[inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })]]
vim.cmd[[inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })]]

-- Saga
key_mapper('n', '<space>rn', ':lua require"lspsaga.rename".rename()<CR>')
key_mapper('n', 'K', ':lua require"lspsaga.hover".render_hover_doc()<CR>')
