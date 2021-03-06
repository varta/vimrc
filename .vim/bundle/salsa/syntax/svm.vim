" Vim syntax file
" Language: Salsa
" Maintainer:   Frank Erens <frank.erens@gmail.com>
" Last Change:  2012 Oct 23

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match svmRegister     "\$f\?[a-h]\|$s\|$p" 
syn match svmMacroParam   "@\d"

syn match svmPreproc      "#macro\|#define"

syn keyword svmOpCode     load ccall exit

syn keyword svmData       ascii asciiz

syn keyword svmFName      F_PRINT F_EXIT

syn match svmLabel        "\<\w+:\>"

syn region svmComment start=";" skip="\\$" end="$" contains=@Spell


hi def link svmComment      Comment
hi def link svmRegister     Identifier
hi def link svmMacroParam   Identifier
hi def link svmPreproc      PreProc
hi def link svmOpCode       Keyword
hi def link svmFName        Constant
hi def link svmData         Type

let b:current_syntax = "salsa"
