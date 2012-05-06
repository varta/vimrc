set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set tw=80
syntax on
set formatoptions+=r
set cinoptions=:0g0
set bs=2
set mouse=a
set nobackup
set clipboard=unnamed
filetype plugin on

" Only on cygwin and Windows
if has("win32") || has("win32unix")
    set term=builtin_ansi
endif

autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
au BufNewFile,BufRead *.mips set syntax=mips

" Always use LaTeX for .tex files
let g:tex_flavor='latex'

nnoremap <D-i> gg=G
inoremap <D-i> <Esc>gg=Gi
vnoremap <D-i> =
