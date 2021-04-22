" Key bindings for quicker Git work
" Status
nnoremap <silent> <leader>gg :Git<CR>
" Commit
nnoremap <silent> <leader>gc :Git commit<CR>
" Push
nnoremap <silent> <leader>gp :Git push<CR>
" Open diff tool
nnoremap <silent> <leader>gd :Gdiffsplit!<CR>
" Open merge tool
nnoremap <silent> <leader>gm :Git mergetool<CR>
" Easily resolve merges
" nnoremap <silent> <leader>gh :diffget //2<CR>
" nnoremap <silent> <leader>gl :diffget //3<CR>
" Git blame
nnoremap <silent> <leader>gb :Git blame<CR>
