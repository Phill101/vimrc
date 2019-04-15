call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

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

" coc.nvim mappings
" =================


colorscheme gruvbox
set background=dark

set number " display number of line
set expandtab " force to use space character on tab
set tabstop=2 " how many tabs we should use on tab

set hls
set incsearch
syntax on

