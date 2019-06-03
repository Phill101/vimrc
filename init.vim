call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" colorscheme
Plug 'morhetz/gruvbox'


" common programming plugins
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', { 'do': { -> coc#util#install() } }

" scala
Plug 'derekwyatt/vim-scala'
au BufRead,BufNewFile *.sbt set filetype=scala

" rust
Plug 'rust-lang/rust.vim'


call plug#end()

let mapleader=" "

" =================
" nerdtree mappings
map <C-n> :NERDTreeToggle<CR>
" nerdtree mappings
" =================

" =================
" coc.nvim mappings

" <C-Space> for trigger completion.
inoremap <silent><expr> <C-Space> coc#refresh()
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" [c and ]c for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>

" format selected region
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

nmap <leader>rn <Plug>(coc-rename)
nmap <leader>qf <Plug>(coc-fix-current)

nnoremap <silent> <leader>s :<C-u>CocList -I symbols<cr>

" coc.nvim mappings
" =================

" disable bottom status bar
set noshowmode
set noruler
set laststatus=0
set noshowcmd
set cmdheight=1

colorscheme gruvbox
set background=dark

set number    " display number of line

set expandtab     " Tab transformed in spaces
set tabstop=2     " Sets tab character to correspond to x columns.
                  " x spaces are automatically converted to <tab>.
                  " If expandtab option is on each <tab> character is converted to x spaces.
set softtabstop=2 " column offset when PRESSING the tab key or the backspace key. 
set shiftwidth=2  " column offset when using keys '>' and '<' in normal mode.

set hls
set incsearch
syntax on

