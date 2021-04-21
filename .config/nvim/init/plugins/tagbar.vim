" Navigating between tags
" Go to next top-level tag
let g:tagbar_map_nexttag = 'J'
" Same, but previous
let g:tagbar_map_prevtag = 'K'
" Show prototype of current tag
let g:tagbar_map_showproto = 'u'
" Use order from source file
let g:tagbar_sort = 0
" Don't show help tip at the top
let g:tagbar_compact = 1
" Auto-open folds while following cursor
let g:tagbar_autoshowtag = 1
" Don't show status line
let g:no_status_line = 1
" Close tagbar when a tag is selected
let g:tagbar_autoclose = 1

" Open tagbar when opening certain language types
" autocmd BufNewFile,BufReadPre *.py,*.java,*.rs,*.cpp,*.c,*.r TagbarOpen

" Explicitly close tagbar for these types
" autocmd BufNewFile,BufReadPre *.txt,*.rst TagbarClose

nnoremap <silent> tr :TagbarToggle<CR>
