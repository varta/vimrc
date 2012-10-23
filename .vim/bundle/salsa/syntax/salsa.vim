" Vim syntax file
" Language: Salsa
" Maintainer:   Frank Erens <frank.erens@gmail.com>
" Last Change:  2012 Oct 8

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax case match

syn match salsaConstant       "@\w\+"
syn match salsaNumber         "\<\d\+\>"

syn keyword salsaBoolean      true false
syn match   salsaKeyword      "\$"
syn keyword salsaType         integer real number special bool string table 
syn keyword salsaType         object
syn keyword salsaStructure    function class enum macro
syn keyword salsaStructure    namespace
syn keyword salsaStatement    return this parent using include import
syn keyword salsaConditional  if else unless cond
syn keyword salsaRepeat       do while until for 

syn keyword salsaStatement    cfun typeof quote unquote 
syn match   salsaStatement    "quoted?"
syn keyword salsaBuiltin      extends methods cmethods construct destruct
syn keyword salsaBuiltin      unknown cunknown
syn keyword salsaBuiltin      instanceof
syn keyword salsaBuiltin      iden cnst noop map zip fold any all
syn keyword salsaBuiltin      car cdr

syn keyword salsaBuiltin      from to in

syn match salsaBuiltin        "!!settypeof\|!!settypehandler"
syn match salsaBuiltin        "!!setunknownhandlerfor"
syn match salsaBuiltin        "!!setintegerconstructor\|!!setintegertype"
syn match salsaBuiltin        "!!setrealconstructor\|!!setrealtype"
syn match salsaBuiltin        "!!returnfrom"

syn region salsaString    start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell
syn region salsaComment   start="//" end="$" contains=@Spell
syn region salsaComment   start="/\*" end="\*/"

hi def link salsaComment      Comment
hi def link salsaNumber       Number
hi def link salsaString       String
hi def link salsaBoolean      Boolean
hi def link salsaType         Type
hi def link salsaSpecial      Special
hi def link salsaBuiltin      Identifier
hi def link salsaConditional  Conditional
hi def link salsaStatement    Statement
hi def link salsaRepeat       Repeat
hi def link salsaStructure    Structure
hi def link salsaConstant     Constant

let b:current_syntax = "salsa"
