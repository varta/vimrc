" Refactoring
if executable("astyle")
  set equalprg=astyle\ --options=$HOME/.vim/astyle
endif

" color
if has("gui")
  set colorcolumn=+1,+40
endif

