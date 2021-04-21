function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Navigating through results list
" Tab to select next result
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" Shift+Tab to select previous
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Use enter to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Select first option if no option is selected on enter
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Project refactoring keybinding
nnoremap <silent> <leader>pwr :CocSearch <C-R>=expand("<cword>")<CR><CR>

" Go to definition
nmap gd <Plug>(coc-definition)
nmap gb <C-o>
nmap gi <Plug>(coc-implementation)
nmap gr <Plug>(coc-references)

" Jump between diagnostic positions
nmap <silent> <leader>dk <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>dK <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>dj <Plug>(coc-diagnostic-next)
nmap <silent> <leader>dJ <Plug>(coc-diagnostic-next-error)

" Show full diagnostics list
nmap <silent> <leader>dd :CocDiagnostics<CR>

