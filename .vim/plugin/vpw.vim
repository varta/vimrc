" Programmeerwedstrijd commands
command Testpl execute "!perl % < %:r.input"
au FileType perl map <D-/> :Testpl<CR>

command Testpy execute "!python % < %:r.input"
command Testpy3 execute "!python3 % < %:r.input"
au FileType python map <D-/> :Testpy<CR>

command Testscm execute "!racket % < %:r.input"
au FileType scheme map <D-/> :Testscm<CR>

command Testphp execute "!php % < %:r.input"
au FileType php map <D-/> :Testphp<CR>

command Testrb execute "!ruby % < %:r.input"
au FileType ruby map <D-/> :Testrb<CR>
