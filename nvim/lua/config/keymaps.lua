local map = function(mode, key, result)
    vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

map('i', 'jk', '<ESC>')

-- tabs
map('n', '<leader>t', ':tabnew<CR>')
map('n', '<leader>w', ':tabclose<CR>')

-- terminal navigation
map('t', '<C-h>', '<C-\\><C-N><C-w>h')
map('t', '<C-j>', '<C-\\><C-N><C-w>j')
map('t', '<C-k>', '<C-\\><C-N><C-w>k')
map('t', '<C-l>', '<C-\\><C-N><C-w>l')
map('t', 'jk', '<C-\\><C-n>')

-- window navigation
map('n', '<C-j>', '<C-w>j')
map('n', '<C-h>', '<C-w>h')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
map('n', '<leader>-', ':resize -10 <CR>')
map('n', '<leader>+', ':resize +10 <CR>')
map('n', '<leader>>', ':vertical resize +10 <CR>')
map('n', '<leader><', ':vertical resize -10 <CR>')

-- window splitting
map('n', '<leader>v', ':vsp <CR>')
map('n', '<leader>s', ':sp <CR>')

-- this fixes the issue where the pmenu would stay open when hitting ctrl-c to
-- exit normal mode in the middle of a word with nvim-cmp
map("i", "<C-c>", "<Esc>")
