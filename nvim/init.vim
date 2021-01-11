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

call plug#begin('~/.config/nvim/plugged') 

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Themes
Plug 'morhetz/gruvbox'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'ntk148v/vim-horizon'
Plug 'arcticicestudio/nord-vim'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'lifepillar/vim-solarized8'

" Asthetics
Plug 'itchyny/lightline.vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" LSP
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy Finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

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
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_sign_column = 'bg0'

" gruvbox material
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_visual = 'reverse'
let g:gruvbox_material_sign_column_background = 'none'

" nord
let g:nord_underline = 1

" solarized
let g:solarized_statusline = 'flat'

if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
endif

set background=light
colorscheme solarized8_flat

" for horizon
" highlight Pmenu cterm=NONE gui=NONE ctermbg=233 ctermfg=252 guifg=#ffffff guibg=#16161C

hi! linenr ctermbg=none guibg=none


" lightline
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['gitbranch', 'cocstatus', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
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

" git gutter
let g:gitgutter_set_sign_backgrounds = 1

" coc
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

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

command! -nargs=0 Format :call CocAction('format')
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" fzf
nnoremap <leader>p :Files<CR>
nnoremap <leader>g :GFiles<CR>

inoremap jk  <Esc> 

" window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <leader>< :resize -10<CR>
nnoremap <Leader>> :resize +10<CR>
nnoremap <leader>+ :vertical resize +10<CR>
nnoremap <leader>- :vertical resize -10<CR>

" nnoremap <leader>f :RustFmt<CR>

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
