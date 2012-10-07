" Vim color file
" Maintainer: Frank Erens

hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="seysayux"

" Common
hi DiffAdd      guibg=MediumSeaGreen
hi Directory    guifg=#1600FF
hi ErrorMsg     guibg=Firebrick2 guifg=White
hi FoldColumn   guibg=Grey guifg=DarkBlue
hi Folded       guibg=#E6E6E6 guifg=DarkBlue
hi IncSearch    gui=reverse
hi ModeMsg      gui=bold
hi MoreMsg      gui=bold guifg=SeaGreen4
hi NonText      gui=bold guifg=Blue
hi Pmenu        guibg=LightSteelBlue1
hi PmenuSbar    guibg=Grey
hi PmenuSel     guifg=White guibg=SkyBlue4
hi PmenuThumb   gui=reverse
hi Question     gui=bold guifg=Chartreuse4
hi SignColumn   guibg=Grey guifg=DarkBlue
hi SpecialKey   guifg=Blue
hi SpellBad     guisp=Firebrick2 gui=undercurl
hi SpellCap     guisp=Blue gui=undercurl
hi SpellLocal   guisp=DarkCyan gui=undercurl
hi SpellRare    guisp=Magenta gui=undercurl
hi StatusLine   gui=NONE guifg=White guibg=DarkSlateGray
hi StatusLineNC gui=NONE guifg=SlateGray guibg=Gray90
hi TabLine      gui=underline guibg=LightGrey
hi TabLineFill  gui=reverse
hi TabLineSel   gui=bold
hi Title        gui=bold guifg=DeepSkyBlue3
hi VertSplit    gui=NONE guifg=DarkSlateGray guibg=Gray90
if has("gui_macvim")
  hi Visual       guibg=MacSelectedTextBackgroundColor
else
  hi Visual       guibg=#72F7FF
endif
hi WarningMsg   guifg=Firebrick2

hi Error        gui=NONE guifg=White guibg=Firebrick3
hi Ignore       gui=NONE guifg=bg guibg=NONE
hi PreProc      gui=NONE guifg=DodgerBlue3 guibg=NONE
hi Underlined   gui=underline guifg=SteelBlue1
hi Special      gui=NONE guifg=BlueViolet guibg=NONE

if &background == "dark"
    " Dark colors
    hi Normal guifg=#FFFFFF guibg=#000000 ctermfg=14

    hi LineNr       guibg=#888888 guifg=#E6E6E6
    hi CursorLineNr       guibg=#888888 guifg=#E6E6E6 gui=bold
    hi ColorColumn term=reverse ctermbg=7 guibg=#666666
    hi CursorLine   guibg=Gray20
    hi Pmenu guibg=#444444

    hi Todo         gui=NONE guibg=Green4 guifg=PaleGreen1

    " syntax highlighting groups
    hi Comment guifg=grey gui=italic 
    hi Constant guifg=#E47C48
    hi String guifg=#FE2B38
    hi Character guifg=#786DFF
    hi Identifier guifg=#23FF83 
    hi Statement guifg=#D31881
    hi PreProc guifg=#E47C48
    hi Type guifg=#00A0FF

else " &background == light
    " light colors
    if has("gui_macvim")
        hi Normal       gui=NONE guifg=MacTextColor guibg=MacTextBackgroundColor
    else
        hi Normal       gui=NONE guifg=Black guibg=White
    endif

    hi Todo         gui=NONE guifg=DarkGreen guibg=PaleGreen1

    hi CursorLine   guibg=#F1F5FA
    hi LineNr       guifg=#888888 guibg=#E6E6E6
    hi CursorLineNr       guifg=#888888 guibg=#E6E6E6 gui=bold
    hi ColorColumn term=reverse ctermbg=7 guibg=lightgrey
    hi Pmenu        guibg=LightSteelBlue1

    " syntax highlighting groups
    hi Comment guifg=#888888 gui=italic
    hi Constant guifg=DarkOrange
    hi String guifg=#FE2B38
    hi Character guifg=#786DFF
    hi Identifier guifg=Green4
    hi Statement guifg=Maroon
    hi PreProc guifg=Green4 gui=bold
    hi Type guifg=#3333FF
endif