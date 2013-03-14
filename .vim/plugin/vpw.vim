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

command Testc execute "!clang -Wall -O2 % -lm && ./a.out < %:r.input && rm a.out"
au FileType c map <D-/> :Testc<CR>

command Testcpp execute "!clang++ -Wall -O2 % -lm && ./a.out < %:r.input && rm a.out"
au FileType cpp map <D-/> :Testcpp<CR>

command Testcs execute "!mcs % && mono %:r.exe < %:r.input && rm %:r.exe"
au FileType cs map <D-/> :Testcs<CR>
