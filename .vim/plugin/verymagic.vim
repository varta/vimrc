" Enables "very magic" stuff by default.

fu! Single_quote(str)
  return "'" . substitute(copy(a:str), "'", "''", 'g') . "'"
endfu

fu! Cabbrev(key, value)
  exe printf('cabbrev <expr> %s (getcmdtype() == ":" && getcmdpos() <= %d) ? %s : %s',
    \ a:key, 1+len(a:key), Single_quote(a:value), Single_quote(a:key))
endfu

" sane regex                                                                {{{

" use this custom function for cabbrevations. This makes sure that they only
" apply in the beginning of a command. Else we might end up with stuff like
"   :%s/\vfoo/\v/\vbar/
" if we happen to move backwards in the pattern.
call Cabbrev('/',   '/\v')
call Cabbrev('?',   '?\v')

call Cabbrev('s/',  's/\v')
call Cabbrev('%s/', '%s/\v')

call Cabbrev('s#',  's#\v')
call Cabbrev('%s#', '%s#\v')

call Cabbrev('s@',  's@\v')
call Cabbrev('%s@', '%s@\v')

call Cabbrev('s!',  's!\v')
call Cabbrev('%s!', '%s!\v')

call Cabbrev('s%',  's%\v')
call Cabbrev('%s%', '%s%\v')

call Cabbrev('/',   '/\v')

call Cabbrev("'<,'>s/", "'<,'>s/\\v")
call Cabbrev("'<,'>s#", "'<,'>s#\\v")
call Cabbrev("'<,'>s@", "'<,'>s@\\v")
call Cabbrev("'<,'>s!", "'<,'>s!\\v")

nnoremap /        /\v
nnoremap ?        ?\v
" }}}
