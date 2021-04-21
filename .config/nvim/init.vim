" The leader key is the main modifier used for keybindings.
" You can use it inside keybindings by using <leader>
" I use space as my leader key
let g:mapleader = ' '
" Local leader is the same principle as leader, but it's used
" for keybindings that are local to the current buffer, to
" avoid confusion
" I use tab as my local leader
let g:maplocalleader = "\<tab>"

" Here, I source the various config files. I explicitely source them one by one
" to ensure their order is always the same (the autocmds are needed later, e.g.
" when the colorscheme is sourced)
runtime  init/autocmds.vim
runtime  init/keys.vim
runtime  init/netrw.vim
runtime  init/settings.vim

" The configs for the various plugins don't have a particular order to them
runtime! init/plugins/*.vim

" This sources a .vim/local.vim file in the current directory, if it exists.
" This allows for project-specific settings, such as on-write autocmd's etc.
" The silent! prevents it from showing an error if no local.vim file is found
silent! source .vim/local.vim
