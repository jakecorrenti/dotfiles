syntax on
syntax enable
filetype plugin on 
let mapleader=" "
set laststatus=2
set number              
set showcmd            
set incsearch 		
set expandtab 
set tabstop=4
set shiftwidth=4
set relativenumber
set ignorecase 
set smartcase 
set cursorline
set hidden 
set guicursor=
set noshowmode
set termguicolors
set smartindent
set statusline+=%#warningmsg#
set statusline+=%*
set updatetime=50
set autochdir
set nohlsearch

call plug#begin('~/.config/nvim/plugged') 

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Asthetics
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'arcticicestudio/nord-vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" LSP
Plug 'rust-lang/rust.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" Fuzzy Finding
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'

" Miscellaneous
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'

call plug#end()

" gruvbox
let g:gruvbox_bold = 0
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_sign_column = 'bg0'

" sonokai
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italics = 1
let g:sonokai_sign_column_background = 'none'

set background=dark
colorscheme nord

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua require'lspconfig'.rust_analyzer.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.ccls.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.bashls.setup{ on_attach=require'completion'.on_attach }

if (has("termguicolors"))
  set termguicolors
endif

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

" lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['gitbranch', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
function! LightlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction

inoremap jk  <Esc> 

" window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <leader>f :RustFmt<CR>

" window splitting 
nnoremap <leader>v :vsp <CR>
nnoremap <leader>s :sp <CR>

nnoremap <leader>t :tabnew <CR>
nnoremap <leader>q :tabclose <CR>

nnoremap tb :TagbarToggle <CR>

" terminal navigation 
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap jk <C-\><C-n>

map <C-n> :NERDTreeToggle <CR>
map <C-f> :NERDTreeFind <CR>

" nvim-lua completion 
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" telescope
nnoremap <Leader>p <cmd>lua require'telescope.builtin'.find_files{}<CR>
nnoremap <Leader>g <cmd>lua require'telescope.builtin'.git_files{}<CR>

