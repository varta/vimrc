" MacVim color scheme everywhere!
colors macvim

set number
set cursorline
set showtabline=2

if has("win32") || has("win32unix")
    set guifont=Lucida_Console:h10:cANSI
endif

if version >= 703
    set colorcolumn=+1
    highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
endif
