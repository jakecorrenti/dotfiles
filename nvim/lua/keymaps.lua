local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

local vim = vim

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

-- Telescope
key_mapper("n", "<leader>ff", ':lua require"telescope.builtin".find_files()<CR>')
key_mapper("n", "<leader>fg", ':lua require"telescope.builtin".git_files()<CR>')
key_mapper("n", "<leader>fl", ':lua require"telescope.builtin".live_grep()<CR>')
key_mapper("n", "<leader>fh", ':lua require"telescope.builtin".help_tags()<CR>')
key_mapper("n", "<leader>fb", ':lua require"telescope.builtin".buffers()<CR>')
key_mapper("n", "<leader>fc", ':lua require"telescope.builtin".git_commits()<CR>')
key_mapper("n", "<leader>fs", ':lua require"telescope.builtin".git_status()<CR>')
