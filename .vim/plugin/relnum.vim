let g:relative_line_numbers = 0

function! ToggleLineNumbers()
    if g:relative_line_numbers == 0
        set rnu
        let g:relative_line_numbers = 1
    else
        set nu
        let g:relative_line_numbers = 0
    endif
endfunction

nnoremap <silent> <C-B> :call ToggleLineNumbers()<CR>
