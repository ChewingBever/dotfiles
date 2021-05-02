" See README.md for more information about the plugins
"
" Load the plugins
call plug#begin('~/.config/nvim/plugged')

" Powerful auto-complete engine
" TODO switch to coc-jedi for Python stuff
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fast file navigation using fuzzy search
Plug 'ctrlpvim/ctrlp.vim'

" Git client within Vim
Plug 'tpope/vim-fugitive'

" Change surrounding quotes, brackets...
Plug 'tpope/vim-surround'

" Comment out lines easily
Plug 'tpope/vim-commentary'

" Show ctags in sidebar, useful for navigation
Plug 'majutsushi/tagbar'

" Show Git diffs in sidebar
Plug 'airblade/vim-gitgutter'

" Show indentation using thin lines
Plug 'yggdroot/indentline'

" Auto-indent according to PEP8 rules
Plug 'hynek/vim-python-pep8-indent'

" Text object based on current indent level (e.g. Python)
Plug 'michaeljsmith/vim-indent-object'

" Sidebar showing file structure
Plug 'scrooloose/nerdtree'

" Toml syntax highlighting
Plug 'cespare/vim-toml'

" Auto-bracket pairs
Plug 'jiangmiao/auto-pairs'

" This plugin allows you to align text according to specified delimiters
" e.g. this:
" x = 5
" alongname = 15
" can become this:
" x         = 15
" alongname = 15
Plug 'godlygeek/tabular'

" Some auto-complete for haskell
Plug 'neovimhaskell/haskell-vim'

Plug 'Chiel92/vim-autoformat'

Plug 'leafoftree/vim-vue-plugin'

Plug 'othree/javascript-libraries-syntax.vim'

Plug 'udalov/kotlin-vim'

Plug 'editorconfig/editorconfig-vim'

call plug#end()
