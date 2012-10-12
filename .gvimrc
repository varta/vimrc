" Putting own color scheme to real-life test
colo seysayux

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

" Fugitive
set statusline=%{fugitive#statusline()}

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

" Enable omni completion. 
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS 
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 

" Neocomplcache + clang_complete 
let g:neocomplcache_force_overwrite_completefunc=1
let g:clang_complete_auto=1
let g:clang_auto_select=0
let g:clang_use_library=1
let g:clang_close_preview=1
"let g:clang_snippets=1
"let g:clang_snippets_engine='snipmate'

if &ft != "c" && &ft != "cpp"
    execute ":NeoComplCacheEnable"
endif

autocmd FileType c,cpp silent! execute ":NeoComplCacheDisable"

