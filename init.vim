call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" colorscheme
Plug 'morhetz/gruvbox'

" common programming plugins
Plug 'jiangmiao/auto-pairs'

" scala plugins
Plug 'derekwyatt/vim-scala'
Plug 'neoclide/coc.nvim', { 'do': { -> coc#util#install() } }

au BufRead,BufNewFile *.sbt set filetype=scala

call plug#end()

" nerdtree mappings
map <C-n> :NERDTreeToggle<CR>

colorscheme gruvbox
set background=dark

set number " display number of line
set expandtab " force to use space character on tab
set tabstop=2 " how many tabs we should use on tab

set hls
set incsearch
syntax on

