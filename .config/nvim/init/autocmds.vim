function! OverwriteBackground()
    " We only want a transparent background if we're using the dark theme
    if g:colors_name == 'flattened_dark'
        highlight Normal guibg=NONE ctermbg=NONE
        highlight LineNr ctermfg=NONE ctermbg=NONE
    endif
endfunction

augroup ColorschemeOverwrite
    autocmd!
    autocmd ColorScheme * call OverwriteBackground()
augroup END
