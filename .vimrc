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
set textwidth=80
set formatoptions+=r
set cinoptions=:0g0
set backspace=2
set mouse=a
set nohidden
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

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j
endif

" Automatically change to directory of file {{{1
autocmd BufEnter * silent! lcd %:p:h

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

" Easier split switching {{{2
nnoremap <Tab> <C-w>w
nnoremap <S-Tab> <C-w>W

" End keybinds }}}

" Commands {{{1

" Marked {{{2
command! Marked :silent !open -a Marked.app '%:p'

" Make with automatic copen {{{2
command! -nargs=* Make :make! <args> | copen

" End commands }}}

" Templates {{{1 
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
au BufNewFile,BufRead *.mips set syntax=mips

" Show NFOs in correct codepage {{{1
au BufNewFile,BufRead *.nfo edit ++enc=cp437
" }}}

" Projects

" LibSylph options {{{1
let g:LibSylphEmail = 'seysayux@gmail.com'
" }}}

" Plugins

" Load Pathogen {{{1 
call pathogen#infect()

" Slimv options {{{1
let g:lisp_rainbow=1



" NERDTree options {{{1
" Do not start NerdTree by default
let g:nerdtree_tabs_open_on_gui_startup = 0
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let g:NERDTreeMapHelp='h'
let g:NERDTreeOpenInTabByDefault=1
let g:NERDTreeAutoRefreshOnSave=0

" Gitlib options {{{1
" Use fugitive
let g:GitlibUseFugitive=1

" ConqueTerm options {{{1
" Conque options
let g:ConqueTerm_InsertOnEnter = 0
let g:ConqueTerm_EscKey = '<F8>'

" Command bindings {{{2
" Open a shell
command! Shell ConqueTermSplit zsh
" Open manpages
command! -nargs=1 Man ConqueTermSplit man -P "ul | cat -s" <args>

" Powerline Options {{{1
let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'seysayux_light'
" SuperTab options {{{1
" Context aware completion
let g:SuperTabDefaultCompletionType = "context"

" Snipmate options {{{1 
let g:SnipMate = {}
let g:SnipMate.scope_aliases = {}
let g:SnipMate.scope_aliases['cpp11'] = 'cpp,c'
let g:snips_author = "Frank \"SeySayux\" Erens"

" clang_complete options {{{1
let g:clang_complete_auto=1
let g:clang_auto_select=0
let g:clang_use_library=1
let g:clang_close_preview=1
let g:clang_periodic_quickfix=1
let g:clang_complete_copen=1
let g:clang_hl_errors=1
let g:clang_complete_macros=1
" let g:clang_snippets=1
" let g:clang_snippets_engine='snipmate'

nnoremap ;e call g:ClangUpdateQuickFix()

" NeoComplCache options {{{1
" Options {{{2
" Disable globally (re-enable locally later)
let g:neocomplcache_enable_at_startup = 1
" Use smartcase. 
let g:neocomplcache_enable_smart_case = 1 
" Use camel case completion. 
let g:neocomplcache_enable_camel_case_completion = 1 
" Use underbar completion. 
let g:neocomplcache_enable_underbar_completion = 1 
" Set minimum syntax keyword length. 
let g:neocomplcache_min_syntax_length = 3 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*' 
" Force NeoComplCache
let g:neocomplcache_force_overwrite_completefunc=1

" Enable omni completion. {{{2
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS 
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 
autocmd FileType c,cpp setlocal omnifunc=ClangComplete

" Autoclose/NeoComplCache per-filetype settings {{{1
" Disable autoclose in Lisp
au FileType lisp,scheme AutoCloseOff
au BufNewFile,BufRead REPL AutoCloseOff

" Re-enable autoclose when switching windows
fun! s:TurnOffAutoComplete()
  if &buftype != "nofile"
    if expand('%')=='REPL' || expand('%') == 'SLDB'
      execute ":NeoComplCacheDisable"
    else
      execute ":NeoComplCacheEnable"
    endif
  endif
endfun

au WinEnter * :call s:TurnOffAutoComplete()
au BufNewFile,BufRead * :call s:TurnOffAutoComplete()

" }}}

" vim: fdm=marker
