" Listing of paths to ignore. I think I could use something similar to CtrlP
" here as well, but I want NERDTree to also show some non-version
" controlled files. It ignores the following files:
" Vim
" Other IDEs
" Python
" Java
" Git
" Stack & Haskell
" CMake
" Non-text files
let NERDTreeIgnore = [
    \ '^\.vim$[[dir]]',
    \ '^\.vscode$[[dir]]', '.*\.code-workspace$[[file]]', '^\.idea$[[dir]]',
    \ '^__pycache__$[[dir]]', '^\.pytest_cache$[[dir]]', '^venv$[[dir]]',
        \ '\.egg-info$[[dir]]', '^dist$[[dir]]', '^build$[[dir]]',
        \ '^\.eggs$[[dir]]',
    \ '^out$[[dir]]',
    \ '^\.git$[[dir]]',
    \ '^\.stack-work$[[dir]]', '\.lock$',
    \ '^CMakeFiles$[[dir]]', '^CMakeCache.txt$[[file]]',
    \ '.pdf$[[file]]']

" Show files starting with .
let NERDTreeShowHidden = 1
" Hide 'Press ? for help'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" Close NERDTree after opening a file
let NERDTreeQuitOnOpen = 1
" Explicitely tell NERDTree to never change my current working directory
let NERDTreeChDirMode = 0
" Sort naturally, e.g. z10.txt comes after z1.txt
let NERDTreeNaturalSort = 1
" Show files, not only directories
let NERDTreeShowFiles = 1
" Don't show line numbers
let NERDTreeShowLineNumbers = 0
" Show NERDTree on the left side
let NERDTreeWinPos = 'left'
" Use the minimal menu system
let NERDTreeMinimalMenu = 1
" Always delete the buffer when you rename the file
let NERDTreeAutoDeleteBuffer = 1

" Open NERDTree on the current file
nnoremap <silent> tt :NERDTreeFind<CR>
