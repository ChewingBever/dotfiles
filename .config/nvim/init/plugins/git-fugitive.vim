" Key bindings for quicker Git work
" Status
nnoremap <silent> <leader>gg :Git<CR>
" Commit
nnoremap <silent> <leader>gc :Git commit<CR>
" Push
nnoremap <silent> <leader>gp :Git push<CR>
" Show diffs
nnoremap <silent> <leader>gd :Gvdiffsplit!<CR>
" Easily resolve merges
nnoremap <silent> <leader>gh :diffget //2<CR>
nnoremap <silent> <leader>gl :diffget //3<CR>
