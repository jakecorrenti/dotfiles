syntax on
syntax enable
filetype plugin on 
let mapleader=" "
set number              
set showcmd            
set incsearch 		
set expandtab 
set tabstop=4
set shiftwidth=4
set relativenumber
set ignorecase 
set laststatus=0 " 2 if want color status bar with file name
set smartcase 
set smartindent
set updatetime=50
set nohlsearch
set colorcolumn=80
set background=dark
set termguicolors
set signcolumn=yes

call plug#begin('~/.config/nvim/plugged') 

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter'

" LSP
Plug 'rust-lang/rust.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/lsp_extensions.nvim'

" Fuzzy Finding
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'

" Miscellaneous
" Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

call plug#end()

" nerd tree
let NERDTreeShowHidden=1

colorscheme default

hi! ColorColumn guibg=#161616
hi! Pmenu guibg=#161616
hi! SignColumn guibg=NONE

" completion
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" lsp
lua require'lspconfig'.rust_analyzer.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.ccls.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.bashls.setup{ on_attach=require'completion'.on_attach }

" Enable type inlay hints for rust-analyzer
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
\ lua require'lsp_extensions'.inlay_hints{ prefix = ' » ', aligned = true, highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }

" telescope
let g:telescope_cache_results = 1
let g:telescope_prime_fuzzy_find  = 1

" nerd commenter
let g:NERDSpaceDelims = 1 
let g:NERDCompactSexyComs = 1 
let g:NERDDefaultAlign = 'left' 
let g:NERDCommentEmptyLines = 1 
let g:NERDTrimTrailingWhitespace = 1 
let g:NERDToggleCheckAllLines = 1 

" tree sitter 
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", 
  highlight = {
    enable = true, 
  },
}
EOF

inoremap jk  <Esc> 

" rust
nnoremap <leader>, :Cargo run <CR>
nnoremap <leader>. :Cargo build <CR>
" nnoremap <leader>f :RustFmt <CR>

" window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <leader>- :resize -10 <CR>
nnoremap <Leader>+ :resize +10 <CR>
nnoremap <leader>> :vertical resize +10 <CR>
nnoremap <leader>< :vertical resize -10 <CR>

" window splitting 
nnoremap <leader>v :vsp <CR>
nnoremap <leader>s :sp <CR>

" tabs
nnoremap <leader>t :tabnew <CR>
nnoremap <leader>q :tabclose <CR>

" terminal navigation 
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap jk <C-\><C-n>

" nerd tree
map <C-n> :NERDTreeToggle <CR>
map <C-f> :NERDTreeFind <CR>

" nvim-lua completion 
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" telescope
nnoremap <Leader>p <cmd>lua require'telescope.builtin'.find_files{}<CR>
nnoremap <Leader>g <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <leader>l <cmd>lua require'telescope.builtin'.live_grep()<CR>


" lsp 
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <C-s> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <space>D    <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <space>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <space>e <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent> <space>f <cmd>lua vim.lsp.buf.formatting()<CR>
