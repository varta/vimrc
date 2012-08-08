set smartindent
set cindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set expandtab
set tw=80
syntax on
set formatoptions+=r
set cinoptions=:0g0
set bs=2
set mouse=a
set nobackup
set ruler
set clipboard=unnamed
set encoding=utf-8
set spell spelllang=en_us
filetype plugin on
filetype plugin indent on

let g:lisp_rainbow=1

" Automatically change to directory of file
set autochdir

" Only on Cygwin and Windows
if has("win32") || has("win32unix")
    set term=builtin_ansi
endif

" Syntax stuff
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
au BufNewFile,BufRead *.mips set syntax=mips
au BufNewFile,BufRead *.cpp set syntax=cpp11

" Goto file opens in new tab
nnoremap gf <C-w>gf
nnoremap gF <C-w>gF

" Write as root
cmap w!! set bt=nowrite :%!sudo tee "%"

" Always use LaTeX for .tex files
let g:tex_flavor='latex'

" Build project (eclim)
noremap <D-b> <Esc>:BuildProject<CR>

" Auto indent
nnoremap <D-i> gg=G
inoremap <D-i> <Esc>gg=Gi
vnoremap <D-i> =

" Auto completion
nnoremap <C-Space> <C-x><C-u>
inoremap <C-Space> <C-x><C-u>
