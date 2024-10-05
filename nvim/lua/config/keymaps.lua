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

map("n", "gD", ":lua vim.lsp.buf.declaration() <CR>")
map("n", "gd", ":lua vim.lsp.buf.definition() <CR>")
map("n", "gi", ":lua vim.lsp.buf.implementation() <CR>")
map("n", "<C-s>", ":lua vim.lsp.buf.signature_help() <CR>")
map("n", "<space>D", ":lua vim.lsp.buf.type_definition() <CR>")
map("n", "gr", ":lua vim.lsp.buf.references() <CR>")
map("n", "<space>e", ":lua vim.diagnostic.open_float() <CR>")
map("n", "K", ":lua vim.lsp.buf.hover()<CR>")
map("n", "<space>rn", ":lua vim.lsp.buf.rename()<CR>")
map("n", "<leader>fo", ":lua vim.lsp.buf.format()<CR>")

-- Open the file navigator
map('n', '<leader>mf', ':lua MiniFiles.open() <CR>')

-- Telescope
map('n', '<leader>ff', ':Telescope find_files theme=ivy <CR>')
map('n', '<leader>fg', ':Telescope live_grep theme=ivy <CR>')
