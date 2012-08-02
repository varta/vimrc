" Vim syntax file
" Language: Salsa
" Maintainer:   Frank Erens <frank.erens@gmail.com>
" Last Change:  2012 Aug 2

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax case match

syn match salsaConstant "@get\|@set\|@readonly\|@readwrite\|@property\|@weak"
syn keyword salsaConstant true false
syn match salsaKeyword "\$"
syn keyword salsaType integer real number special bool string table object
syn keyword salsaStructure function class enum
syn keyword salsaStructure namespace
syn keyword salsaStatement return this
syn keyword salsaCondtional if else unless
syn keyword salsaRepeat do while until

syn keyword salsaStatement cfun typeof
syn keyword salsaBuiltin extends methods cmethods construct destruct to
syn keyword salsaBuiltin instanceof
syn keyword salsaBuiltin iden cnst map

syn match salsaBuiltin "!!settypeof\|!!settypehandler\|!!setunknownhandler"

syn region salsaString         start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell

hi def link salsaComment      Comment
hi def link salsaNumber       Number
hi def link salsaString       String
hi def link salsaType         Type
hi def link salsaSpecial      Special
hi def link salsaBuiltin      Identifier
hi def link salsaConditional  Conditional
hi def link salsaStatement    Statement
hi def link salsaRepeat       Repeat
hi def link salsaStructure    Structure
hi def link salsaConstant     Constant

let b:current_syntax = "salsa"
