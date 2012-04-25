set number

if has("win32") || has("win32unix")
    set guifont=Lucida_Console:h10:cANSI
endif

" MacVim-like linenumbers everywhere!
" highlight LineNr term=underline ctermfg=6 guifg=#888888 guibg=#E6E6E6

" MacVim color scheme everywhere!
colors default " Hack required for macvim scheme to work
colors macvim

if version >= 703
    set colorcolumn=+1
    highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
endif
