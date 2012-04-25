set number

if has("win32") || has("win32unix")
    set guifont=Lucida_Console:h10:cANSI
endif

" MacVim color scheme everywhere!
colors macvim

if version >= 703
    set colorcolumn=+1
    highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
endif
