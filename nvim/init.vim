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
set guicursor=
set noshowmode
set smartindent
set statusline+=%#warningmsg#
set statusline+=%*
set updatetime=50
set nohlsearch
set colorcolumn=80

call plug#begin('~/.config/nvim/plugged') 

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Themes
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'ntk148v/vim-horizon'

" Asthetics
Plug 'itchyny/lightline.vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" LSP
Plug 'rust-lang/rust.vim'
Plug 'neovim/nvim-lspconfig'

" Fuzzy Finding
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'

" Miscellaneous
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'jdhao/better-escape.vim'

call plug#end()

" gruvbox
let g:gruvbox_bold = 0
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_sign_column = 'bg0' 

" nerd tree
let NERDTreeShowHidden=1

if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
endif

set background=dark
colorscheme horizon

" nvim LSP
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require'lspconfig'.rust_analyzer.setup{}
lua require'lspconfig'.ccls.setup{}
lua require'lspconfig'.bashls.setup{}
lua require'lspconfig'.sourcekit.setup{}

" lightline
let g:lightline = {
      \ 'colorscheme': 'horizon',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['gitbranch',  'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
function! LightlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction

" nerd commenter
let g:NERDSpaceDelims = 1 
let g:NERDCompactSexyComs = 1 
let g:NERDDefaultAlign = 'left' 
let g:NERDCommentEmptyLines = 1 
let g:NERDTrimTrailingWhitespace = 1 
let g:NERDToggleCheckAllLines = 1 

" nerd tree
let g:NERDTreeWinPos = "right"

" telescope
let g:telescope_cache_results = 1
let g:telescope_prime_fuzzy_find  = 1

inoremap jk  <Esc> 

" rust
nnoremap <leader>, :Cargo run <CR>
nnoremap <leader>. :Cargo build <CR>
nnoremap <leader>f :RustFmt <CR>

" window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <leader>< :resize -10 <CR>
nnoremap <Leader>> :resize +10 <CR>
nnoremap <leader>+ :vertical resize +10 <CR>
nnoremap <leader>- :vertical resize -10 <CR>

" window splitting 
nnoremap <leader>v :vsp <CR>
nnoremap <leader>s :sp <CR>

nnoremap <leader>t :tabnew <CR>
nnoremap <leader>q :tabclose <CR>

" tag bar
nnoremap tb :TagbarToggle <CR>

" terminal navigation 
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap jk <C-\><C-n>

" nerd tree
map <C-n> :NERDTreeToggle <CR>
map <C-f> :NERDTreeFind <CR>

" telescope
nnoremap <Leader>p <cmd>lua require'telescope.builtin'.find_files{}<CR>
nnoremap <Leader>g <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <Leader>l <cmd>lua require'telescope.builtin'.live_grep{}<CR>
