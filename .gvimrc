" MacVim color scheme everywhere!
colors macvim

set number
set cursorline
set showtabline=2

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
