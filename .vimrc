" Local settings

" Detect Environment {{{1

if filereadable($HOME."/.vimfull") && has("gui")
  let g:VimFullConfig = 1 
else 
  let g:VimFullConfig = 0
endif

" }}}

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
set hidden
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

let g:tex_flavor='latex'

" Automatically change to directory of file {{{1
autocmd BufEnter * silent! lcd %:p:h

" Set term correctly on Cygwin and Windows {{{1
if has("win32unix")
  set term=builtin_ansi
endif

" Keybinds {{{1

" Map redraw screen (C-L) to also turn of search highlighting. {{{2
nnoremap <C-l> :nohl<CR><C-l>

" Write as root {{{2
function s:WriteAsRoot()
  setl bt=nowrite
  normal! 'w !sudo tee % > /dev/null'
endfunction

cmap w!! call s:WriteAsRoot()

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

" Spell check
inoremap <C-BS> <C-X><C-S><C-P>
nnoremap <C-BS> i<C-X><C-S><C-P>

" End keybinds }}}

" Commands {{{1

" Marked {{{2
command! Marked :silent !open -a Marked.app '%:p'

" Make with automatic copen {{{2
command! -nargs=* Make :make! <args> | copen

" Git Gui blame
command! Ggblame :Git gui blame %

" End commands }}}

" Templates {{{1 
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
au BufNewFile,BufRead *.mips set syntax=mips

" Show NFOs in correct codepage {{{1
au BufNewFile,BufRead *.nfo edit ++enc=cp437

" Delete whitespace in code {{{1
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,glsl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
"  }}}

" Projects

" LibSylph options {{{1
let g:LibSylphEmail = 'seysayux@gmail.com'
" }}}

" Plugins

" Load Pathogen {{{1 
if has("macunix")
  let g:pathogen_disabled = []
else
  let g:pathogen_disabled = [
      \ "LaTeX-Box",
      \ "clang_complete",
      \ "nenocomplcache-clang_complete",
      \ "pyclewn",
      \ "slimv",
      \ "vim-fugitive",
      \ "vimproc",
      \ "vimshell"
  \ ]
endif

if g:VimFullConfig
  call pathogen#infect()
endif

" Slimv options {{{1
let g:lisp_rainbow=1

" BufExplorer options {{{1
nmap <silent> <D-e> :BufExplorer<CR>
imap <silent> <D-e> <Esc>:BufExplorer<CR>

" MiniBufExplorer options {{{1
if g:VimFullConfig
  let g:miniBufExplBuffersNeeded=0
endif

let g:miniBufExplUseSingleClick=1
let g:miniBufExplorerDebugLevel=10
" let g:miniBufExplForceSyntaxEnable=1

" CSS colors options
let g:cssColorVimDoNotMessMyUpdatetime = 1


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

" VimShell options {{{1
let g:vimshell_popup_command='belowright split'
let g:vimshell_popup_height=16
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt = $USER."$ "

" Command bindings {{{2
command! Shell VimShell -popup 

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

" LaTeX-Box options {{{1
let g:LatexBox_viewer = 'open'
let g:LatexBox_Folding = 1
let g:LatexBox_fold_envs = 1
let g:LatexBox_fold_preamble = 1

" clang_complete options {{{1
let g:clang_complete_auto=1
let g:clang_auto_select=0
let g:clang_use_library=1
let g:clang_close_preview=1
let g:clang_periodic_quickfix=1
let g:clang_complete_copen=1
let g:clang_hl_errors=1
let g:clang_complete_macros=1
let g:clang_user_options="-stdlib=libc++ -std=c++11 -Wall"
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
" Force NeoComplCache
let g:neocomplcache_force_overwrite_completefunc=1

" C-Space for autocomplete
imap <expr> <C-Space> pumvisible() ? 
    \ "\<Plug>(neocomplcache_start_unite_quick_match)" : '' 

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

" Disable autoclose in XML and html
au FileType xml,html AutoCloseOff
au FileType xml,html let b:AutoCloseNoCrRemap = 1

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

if g:VimFullConfig
  au WinEnter * :call s:TurnOffAutoComplete()
  au BufNewFile,BufRead * :call s:TurnOffAutoComplete()
endif

" }}}

" Color scheme {{{1
let g:force_greyComments=1
set background=dark
colo force
" }}}

" vim: fdm=marker
