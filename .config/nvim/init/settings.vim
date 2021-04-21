" Terminal
" As I often use non-standard shells, certain things can break if this isn't
" explicitely set
" TODO maybe use which to find the executable?
set shell=/bin/bash


" Makes your cursor centered whenever possible. 999 is just a large number,
" making it always centered
set scrolloff=999

" Colorscheme
" This forces (Neo)Vim to assume the terminal supports 256 colors.
" Without this, some colorschemes (including mine) don't work properly.
set termguicolors
" Set colorscheme
colorscheme flattened_dark
hi Normal guibg=NONE ctermbg=NONE
hi LineNr ctermfg=NONE ctermbg=NONE

" Line numbers
" I use the combination of absolute and relative line numbers. On the
" current line, it shows the absolute; on all the others, the relative.
set number relativenumber

" Splits
" I prefer the logic of 'open your main window first, and all other
" afterwards', so this makes a new file open below or to the right of the
" current one.
set splitbelow splitright

" Indentation
" I only use four spaces as indentation. This configures Vim to always use four
" spaces, for both manual tabs and automatic indentation.
set expandtab tabstop=4 shiftwidth=4

" Search functionality
" Show matches as pattern is being typed
set incsearch
" Ignore case as long as there are no capital letters in the pattern
set smartcase
" Don't hightlight search results after search is finished
set nohlsearch

" autocmd BufReadPre * call SetDirs()
" Turn on swap files
set swapfile
set directory=./.vim/swap//
" Create file backups
" set backup
" Store backups in .vim directory, next to swap files
" set backupdir=./.vim/backup/,
" Temporary, until I've found a fix
set nobackup
" Create an undo file for each file; this makes undo persistent
set undofile
set undodir=./.vim/undo//

" Increases speed of CoC and Gitgutter
set updatetime=250

" Make Vim use pipes instead of temp files when running commands
set noshelltemp
