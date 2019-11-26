call plug#begin('~/.vim/plugged')

Plug 'easymotion/vim-easymotion'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" colorscheme
Plug 'morhetz/gruvbox'
" Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.6' }
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'vim-scripts/Wombat'
Plug 'vim-airline/vim-airline'



" common programming plugins
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Plug 'jiangmiao/auto-pairs' " <M-p> toggle
Plug 'neoclide/coc.nvim', { 'do': './install.sh nightly' }

" plugin for displaying indent levels. <leader>ig to toggle
Plug 'nathanaelkane/vim-indent-guides'

" aligning
Plug 'junegunn/vim-easy-align'

" scala
Plug 'derekwyatt/vim-scala'
au BufRead,BufNewFile *.sbt set filetype=scala

" rust
Plug 'rust-lang/rust.vim'

" haskell
Plug 'neovimhaskell/haskell-vim'

" protobuf
Plug 'uarun/vim-protobuf'


call plug#end()

let mapleader=" "


" =================
" aligning
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" =================

" =================
" vim-scala options
let g:scala_sort_across_groups=1
" =================


" =================
" nerdtree mappings
map <C-n> :NERDTreeToggle<CR>
" nerdtree mappings
" =================

" =================
" coc.nvim mappings

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" <C-Space> for trigger completion.
inoremap <silent><expr> <C-Space> coc#refresh()
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" [c and ]c for navigate diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
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

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" format selected region
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>qf <Plug>(coc-fix-current)

nnoremap <silent> <leader>s :<C-u>CocList -I symbols<cr>

" coc.nvim mappings
" =================

set noshowmode      " disable bottom status bar
set noruler
set laststatus=0
set noshowcmd
set colorcolumn=120

set hidden          " if hidden is not set, TextEdit might fail.
set nobackup        " some servers have issues with backup files
set nowritebackup

set cmdheight=2     " better display for messages
set updatetime=300  " smaller updatetime for CursorHold & CursorHoldI
set shortmess+=c    " don't give |ins-completion-menu| messages.
set signcolumn=yes  " always show signcolumns


set termguicolors
" colorscheme wombat
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='soft'

set relativenumber  " display numbers
set expandtab       " Tab transformed in spaces
set tabstop=2       " Sets tab character to correspond to x columns.
                    " x spaces are automatically converted to <tab>.
                    " If expandtab option is on each <tab> character is converted to x spaces.
set softtabstop=2   " column offset when PRESSING the tab key or the backspace key. 
set shiftwidth=2    " column offset when using keys '>' and '<' in normal mode.

set hls
set incsearch
syntax on

