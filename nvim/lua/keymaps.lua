local key_mapper = function(mode, key, result)
    vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

key_mapper("i", "jk", "<ESC>")

-- tabs
key_mapper("n", "<leader>t", ":tabnew<CR>")
key_mapper("n", "<leader>w", ":tabclose<CR>")

-- terminal navigation
key_mapper("t", "<C-h>", "<C-\\><C-N><C-w>h")
key_mapper("t", "<C-j>", "<C-\\><C-N><C-w>j")
key_mapper("t", "<C-k>", "<C-\\><C-N><C-w>k")
key_mapper("t", "<C-l>", "<C-\\><C-N><C-w>l")
key_mapper("t", "jk", "<C-\\><C-n>")

-- window navigation
key_mapper("n", "<C-j>", "<C-w>j")
key_mapper("n", "<C-h>", "<C-w>h")
key_mapper("n", "<C-k>", "<C-w>k")
key_mapper("n", "<C-l>", "<C-w>l")
key_mapper("n", "<leader>-", ":resize -10 <CR>")
key_mapper("n", "<leader>+", ":resize +10 <CR>")
key_mapper("n", "<leader>>", ":vertical resize +10 <CR>")
key_mapper("n", "<leader><", ":vertical resize -10 <CR>")

-- window splitting
key_mapper("n", "<leader>v", ":vsp <CR>")
key_mapper("n", "<leader>s", ":sp <CR>")

-- LSP
key_mapper("n", "gD", ":lua vim.lsp.buf.declaration() <CR>")
key_mapper("n", "gd", ":lua vim.lsp.buf.definition() <CR>")
key_mapper("n", "gi", ":lua vim.lsp.buf.implementation() <CR>")
key_mapper("n", "<C-s>", ":lua vim.lsp.buf.signature_help() <CR>")
key_mapper("n", "<space>D", ":lua vim.lsp.buf.type_definition() <CR>")
key_mapper("n", "gr", ":lua vim.lsp.buf.references() <CR>")
key_mapper("n", "<space>e", ":lua vim.diagnostic.open_float() <CR>")
key_mapper("n", "K", ":lua vim.lsp.buf.hover()<CR>")
key_mapper("n", "<space>rn", ":lua vim.lsp.buf.rename()<CR>")
key_mapper("n", "<leader>fo", ":lua vim.lsp.buf.format()<CR>")

-- Telescope
key_mapper("n", "<leader>ff", ':lua require"telescope.builtin".find_files()<CR>')
key_mapper("n", "<leader>fg", ':lua require"telescope.builtin".live_grep()<CR>')
key_mapper("n", "<leader>fh", ':lua require"telescope.builtin".help_tags()<CR>')
key_mapper("n", "<leader>fb", ':lua require"telescope.builtin".buffers()<CR>')
key_mapper("n", "<leader>fc", ':lua require"telescope.builtin".git_commits()<CR>')
key_mapper("n", "<leader>fs", ':lua require"telescope.builtin".git_status()<CR>')
key_mapper("n", "<leader>ft", ':TodoTelescope<CR>')
vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

-- diffview
key_mapper("n", "<leader>do", ':DiffviewOpen<CR>')
key_mapper("n", "<leader>dc", ':DiffviewClose<CR>')

-- trouble.nvim
key_mapper("n", "<leader>xx", ":TroubleToggle<CR>")

-- this fixes the issue where the pmenu would stay open when hitting ctrl-c to
-- exit normal mode in the middle of a word with nvim-cmp
key_mapper("i", "<C-c>", "<Esc>")
