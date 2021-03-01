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
set smartcase 
set guicursor=
set smartindent
set updatetime=50
set nohlsearch
set colorcolumn=80
set background=dark

call plug#begin('~/.config/nvim/plugged') 

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Git integration
Plug 'tpope/vim-fugitive'

" LSP
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy Finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Miscellaneous
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

call plug#end()

" nerd tree
let NERDTreeShowHidden=1

if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
endif

" gruvbox
let g:gruvbox_bold = 0
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_sign_column = 'bg0'

colorscheme default

hi! ColorColumn guibg=#161616
hi! Pmenu guibg=#161616
hi! SignColumn guibg=NONE

" nerd commenter
let g:NERDSpaceDelims = 1 
let g:NERDCompactSexyComs = 1 
let g:NERDDefaultAlign = 'left' 
let g:NERDCommentEmptyLines = 1 
let g:NERDTrimTrailingWhitespace = 1 
let g:NERDToggleCheckAllLines = 1 

" coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <leader>f :Format <CR>

command! -nargs=0 Format :call CocAction('format')

" fzf
nnoremap <leader>p :Files<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>l :Rg<CR>

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
nnoremap <leader>< :resize -10 <CR>
nnoremap <Leader>> :resize +10 <CR>
nnoremap <leader>+ :vertical resize +10 <CR>
nnoremap <leader>- :vertical resize -10 <CR>

" window splitting 
nnoremap <leader>v :vsp <CR>
nnoremap <leader>s :sp <CR>

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
