set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set tw=80
syntax on
set formatoptions+=r
set cinoptions=:0g0
filetype plugin on

set colorcolumn=+1
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
au BufNewFile,BufRead *.mips set syntax=mips

nnoremap <D-i> gg=G
inoremap <D-i> <Esc>gg=Gi
vnoremap <D-i> =
