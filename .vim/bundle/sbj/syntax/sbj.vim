" Vim syntax file
" Language:     SBJ
" Maintainer:   Frank Erens <frank.erens@gmail.com>
" Last Change:  2012 Dec 12

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax case match

syn match sbjConstant       "@\w\+"
syn match sbjNumber         "\<\d\+\>"
syn match sbjHex            "\$\$[0-9a-fA-F]\+"

syn keyword sbjBoolean      true false

syn match sbjPreproc        "!!SBJ:.*$"

syn region sbjString    start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell
syn region sbjComment   start="//" end="$" contains=@Spell
syn region sbjComment   start="/\*" end="\*/"

hi def link sbjComment      Comment
hi def link sbjNumber       Number
hi def link sbjHex          Number
hi def link sbjString       String
hi def link sbjBoolean      Boolean
hi def link sbjType         Type
hi def link sbjSpecial      Special
hi def link sbjBuiltin      Identifier
hi def link sbjConditional  Conditional
hi def link sbjStatement    Statement
hi def link sbjRepeat       Repeat
hi def link sbjStructure    Structure
hi def link sbjConstant     Constant
hi def link sbjPreproc      PreProc

let b:current_syntax = "sbj"
