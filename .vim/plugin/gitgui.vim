if has("macunix")
    command! GitGui !/usr/local/bin/git gui
    command! GitX !/usr/local/bin/gitx

    amenu <silent> Git.Git\ Gui<Tab>⌘⇧C :GitGui<CR>
    amenu <silent> Git.GitX<Tab>⌘⇧H :GitX<CR>

    nnoremap <D-S-c> :GitGui<CR>
    nnoremap <D-S-h> :GitX<CR>
    inoremap <D-S-c> <Esc>:GitGui<CR>
    inoremap <D-S-h> <Esc>:GitX<CR>
endif
