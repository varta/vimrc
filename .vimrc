set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set tw=80
syntax on
set formatoptions+=r
set cinoptions=:0g0
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
au BufNewFile,BufRead *.mips set syntax=mips
