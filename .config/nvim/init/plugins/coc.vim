" Default config
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


" Own config
" Project refactoring keybinding
nmap <silent> <leader>pwr :CocSearch <C-R>=expand("<cword>")<CR><CR>
" Go to definition
nmap gd <Plug>(coc-definition)
" Return from jump (e.g. go to definition)
nmap gb <C-o>
" Go to implementation
nmap gi <Plug>(coc-implementation)
" Show references of word
nmap gr <Plug>(coc-references)
" Refactor
nmap <leader>rf <Plug>(coc-refactor)

" Jump between diagnostic positions
nmap <silent> <leader>dk <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>dK <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>dj <Plug>(coc-diagnostic-next)
nmap <silent> <leader>dJ <Plug>(coc-diagnostic-next-error)

" Code formatting
" vnoremap <silent> 

" Show full diagnostics list
nmap <silent> <leader>dd :CocDiagnostics<CR>
