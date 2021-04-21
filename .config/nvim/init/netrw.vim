" Open in tree view by default
let g:netrw_liststyle = 3

" Hide banner at the top
let g:netrw_banner = 0

" Change how netrc opens files
" 1 - horizontal split
" 2 - vertical split
" 3 - new tab
" 4 - previous window
let g:netrw_browse_split = 4

" Width of the view
let g:netrw_winsize = 15

" Start netrc on startup
augroup netrc
    autocmd!
augroup END
