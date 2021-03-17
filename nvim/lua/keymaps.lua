local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

local vim = vim

-- type inlay hints for rust analyzer
--[[
   [vim.cmd[[autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
   [\ lua require'lsp_extensions'.inlay_hints{ prefix = ' » ', aligned = true, highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }]]
  -- ]]

key_mapper('i', 'jk', '<ESC>')

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
key_mapper('n', 'K', ':lua vim.lsp.buf.hover() <CR>')
key_mapper('n', 'gi', ':lua vim.lsp.buf.implementation() <CR>')
key_mapper('n', '<C-s>', ':lua vim.lsp.buf.signature_help() <CR>')
key_mapper('n', '<space>D', ':lua vim.lsp.buf.type_definition() <CR>')
key_mapper('n', '<space>rn', ':lua vim.lsp.buf.rename() <CR>')
key_mapper('n', 'gr', ':lua vim.lsp.buf.references() <CR>')
key_mapper('n', '<space>e', ':lua vim.lsp.diagnostic.show_line_diagnostics() <CR>')
key_mapper('n', '<space>f', ':lua vim.lsp.buf.formatting() <CR>')

-- Compe 
key_mapper('i', '<expr> <CR>', 'compe#confirm("<CR>")')
key_mapper('i', '<expr> <C-e>', 'compe#close("<C-e>")')
key_mapper('i', '<expr> <C-d>', 'compe#scroll({"delta": +4})')
key_mapper('i', '<expr> <C-f>', 'compe#scroll({"delta": -4})')
