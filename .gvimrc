" Putting own color scheme to real-life test
set bg=light
colo seysayux

set number
set cursorline
set showtabline=2
set laststatus=2
set spell spelllang=en_us
set guioptions-=L
set colorcolumn=+1

" Correct editor
if has("macunix")
  let $EDITOR='mvim'
elseif has("unix")
  let $EDTIOR='gvim'
endif

" Kinda hackish...
if has("macunix")
  let NERDTreeWinSize=34
endif

if has("win32") || has("win32unix")
  set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI,Lucida_Console:h10:cANSI
endif

" Fugitive
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

