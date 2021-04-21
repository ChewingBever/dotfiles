" Remap CtrlP shortcut
let g:ctrlp_map = '<leader>t'

" Enable caching
" I think this'll make it run just a bit faster
let g:ctrlp_use_caching = 1
" Don't clear the cache on exit, so it won't re-index every time we open the
" project
let g:ctrlp_clear_cache_on_exit = 0
" Cache inside the project's .vim directory to keep things tidy
let g:ctrlp_cache_dir = './.vim/cache/ctrlp'

" You can define different listing commands for different version controls
" systems etc.
" I currently only have experience with Git, but I've written the config like
" this to allow for easy expansion if needed.
let g:ctrlp_user_command = {
    \ 'types': {
        \ 1: ['.git', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
    \ },
    \ 'fallback': 'find %s -type f'
\ }

" Limit max number of files
" This prevents me from indexing my entire HOME by accident
let g:ctrlp_max_files = 10000
" Also limit recursion depth
let g:ctrlp_max_depth = 40
