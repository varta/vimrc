if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax case match

syn keyword pseuStatement     for do while function to if end in switch case
syn keyword pseuStatement     else return step new break continue goto
syn keyword pseuIdentifier    swap len min max
syn keyword pseuType          int uint real byte string bool
syn keyword pseuType          vec2f vec3f mat2f mat3f matrix graph
syn keyword pseuConstant      true false nil

syn match pseuNumber /\<\d\+\>/

syn region pseuComment   start="//" end="$" contains=@Spell

hi def link pseuComment        Comment
hi def link pseuNumber         Number
hi def link pseuString         String
hi def link pseuLabel          Label
hi def link pseuType           Type
hi def link pseuStatement      Statement
hi def link pseuIdentifier     Identifier
hi def link pseuConstant       Constant

hi Comment      guifg=grey guibg=NONE gui=italic
hi Statement    guifg=black guibg=NONE gui=bold
hi Identifier   guifg=black guibg=NONE gui=italic
hi Number       guifg=black guibg=NONE gui=none
hi Constant     guifg=black guibg=NONE gui=italic
hi Type         guifg=black guibg=NONE gui=underline

let b:current_syntax = "pseudocode"
