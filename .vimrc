" Local settings

" Vim options {{{1
set smartindent
set cindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set expandtab
set ignorecase
set smartcase
set tw=80
set formatoptions+=r
set cinoptions=:0g0
set bs=2
set mouse=a
set nobackup
set ruler
set showcmd
set clipboard=unnamed
set encoding=utf-8
set hlsearch
set incsearch
set grepprg=grep\ -nH\ $*
syntax on
filetype plugin on
filetype plugin indent on

" Automatically change to directory of file {{{1
set autochdir

" Set term correctly on Cygwin and Windows {{{1
if has("win32") || has("win32unix")
    set term=builtin_ansi
endif

" Keybinds {{{1

" Map redraw screen (C-L) to also turn of search highlighting. {{{2
nnoremap <C-l> :nohl<CR><C-l>

" Write as root {{{2
cmap w!! set bt=nowrite :%!sudo tee "%"

" Goto file opens in new tab {{{2
nnoremap gf <C-w>gf
nnoremap gF <C-w>gF

" Auto indent {{{2
nnoremap <D-i> gg=G
inoremap <D-i> <Esc>gg=Gi
vnoremap <D-i> =

" C-space = AutoComplete {{{2
nnoremap <C-Space> <C-x><C-u>
inoremap <C-Space> <C-x><C-u>

" End keybinds }}}

" Make with automatic copen {{{1
command! Make :make! | copen

" Templates {{{1 
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
au BufNewFile,BufRead *.mips set syntax=mips

" Show NFOs in correct codepage {{{1
au BufNewFile,BufRead *.nfo edit ++enc=cp437
" }}}

" Plugins

" Load Pathogen {{{1 
call pathogen#infect()

" LaTeX options {{{1
" Always use LaTeX for .tex files
let g:tex_flavor='latex'

" Slimv options {{{1
let g:lisp_rainbow=1



" NERDTree options {{{1
" Do not start NerdTree by default
let g:nerdtree_tabs_open_on_gui_startup = 0

" ConqueTerm options {{{1
" Open a shell
command! Shell ConqueTermSplit zsh
" Open manpages
command! -nargs=1 Man ConqueTermSplit man -P "ul | cat -s" <args>

 " SuperTab options {{{1
" Context aware completion
let g:SuperTabDefaultCompletionType = "context"

" Snipmate options {{{1 
let g:SnipMate = {}
let g:SnipMate.scope_aliases = {}
let g:SnipMate.scope_aliases['cpp11'] = 'cpp,c'
let g:snips_author = "Frank \"SeySayux\" Erens"

" clang_complete options {{{1
let g:clang_complete_auto=0
let g:clang_auto_select=0
let g:clang_use_library=1
let g:clang_close_preview=1
" let g:clang_snippets=1
" let g:clang_snippets_engine='snipmate'

" }}}

" vim: fdm=marker
