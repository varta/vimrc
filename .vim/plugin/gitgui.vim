if has("macunix")

    function s:OpenGitGui(gui)
        execute "!".a:gui
        execute "1wincmd w"
        call g:NERDTreeRefreshRoot()
    endfunction

    command! GitGui call s:OpenGitGui("/usr/local/bin/git gui") 
    command! GitX call s:OpenGitGui("/usr/local/bin/gitx") 

    amenu <silent> Git.Git\ Gui<Tab>⌘⇧C :GitGui<CR>
    amenu <silent> Git.GitX<Tab>⌘⇧H :GitX<CR>

    nnoremap <D-S-c> :GitGui<CR>
    nnoremap <D-S-h> :GitX<CR>
    inoremap <D-S-c> <Esc>:GitGui<CR>
    inoremap <D-S-h> <Esc>:GitX<CR>
endif
