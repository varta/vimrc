" Putting own color scheme to real-life test
colo seysayux

" But make all line numbers equal.
hi CursorLineNr term=underline ctermfg=6 guifg=#888888 guibg=#E6E6E6

set number
set cursorline
set showtabline=2
set spell spelllang=en_us

if has("win32") || has("win32unix")
    set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI,Lucida_Console:h10:cANSI
endif

if version >= 703
    set colorcolumn=+1
    highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
endif

" Load gvim plugins
for f in split(glob('$VIMHOME/gvimplugin/*.vim'), '\n')
    exe 'source' f
endfor

" Easier split switching
nnoremap <Tab> <C-w>w
nnoremap <S-Tab> <C-w>W

" NerdTree options
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2

" Conque options
let g:ConqueTerm_InsertOnEnter = 0
let g:ConqueTerm_EscKey = '<F8>'

command! Marked :silent !open -a Marked.app '%:p'

function s:TurnOffAutoComplete()
    if expand('%')=='REPL' || expand('%') == 'NERD_tree_1'
        call neocomplcache#disable() 
        execute ":AutoCloseOff" 
    endif

endfunction

au WinEnter * :call s:TurnOffAutoComplete()

if has("macunix") && &background == "dark"
    set transparency=10
endif

" Use neocomplcache. 
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
execute ":NeoComplCacheEnable"
