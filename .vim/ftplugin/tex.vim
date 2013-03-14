set shiftwidth=2
set tabstop=2
set softtabstop=2
set iskeyword+=:
set foldmethod=expr
set formatoptions+=t "a
set formatoptions-=l

fun! LaTeXFill(number)
  let n = a:number-col('.') - 1
  let myline = repeat('%', n)
  exe "normal A ".myline."\<Esc>"
endfun

nnoremap <Leader>ls :call LaTeXFill(80)<CR>
nnoremap <Leader>ld :call LaTeXFill(60)<CR>
nnoremap <Leader>lf :call LaTeXFill(40)<CR>
