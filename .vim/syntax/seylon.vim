" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C++ syntax to start with
if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
  unlet b:current_syntax
endif

syn keyword cConditional        unless
syn keyword cRepeat             until
syn keyword cConstant           null
syn keyword cppStatement        import yield
syn keyword cppType             ctype array string tuple function thread self
syn keyword cppType             byte
syn keyword cppStructure        signedness

" Default highlighting
if version >= 508 || !exists("did_seylon_syntax_inits")
  if version < 508
    let did_seylon_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  " HiLink seylonFoo            Foo
  delcommand HiLink
endif

let b:current_syntax = "seylon"
