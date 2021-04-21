" zz centers the cursor, so combining this with navigation commands keeps my
" cursor centered
" nnoremap j jzz
" nnoremap k kzz
" nnoremap gg ggzz
" nnoremap G Gzz

" I navigate my splits using <leader>hjkl. This setup allows for fast
" switching, which is important as I often end up with 3-4 splits after a while
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>

" These mappings just exist because I'm lazy, and they only really work in
" QWERTY
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>q :q<CR>

" As I don't use the arrow keys for navigation, I remapped them to allow for
" resizing of my splits. If you hold down shift, you can control the size of
" the splits more precisely
nnoremap <silent> <Up> :resize +5<CR>
nnoremap <silent> <Down> :resize -5<CR>
nnoremap <silent> <Right> :vertical resize +5<CR>
nnoremap <silent> <Left> :vertical resize -5<CR>
nnoremap <silent> <S-Up> :resize +1<CR>
nnoremap <silent> <S-Down> :resize -1<CR>
nnoremap <silent> <S-Right> :vertical resize +1<CR>
nnoremap <silent> <S-Left> :vertical resize -1<CR>

" Disable arrow keys in editing & visual mode, as I have no need for them
inoremap <Right> <nop>
inoremap <Left> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
vnoremap <Right> <nop>
vnoremap <Left> <nop>
vnoremap <Up> <nop>
vnoremap <Down> <nop>

" Tabs bindings
" TODO improve on these
" Create tab
nnoremap <silent> <leader>ee :tabnew<CR>
" Close current tab
nnoremap <silent> <leader>ed :tabclose<CR>
" Go to next tab
nnoremap <silent> <leader>el :tabnext<CR>
" Go to previous tab
nnoremap <silent> <leader>eh :tabprevious<CR>

" This function allows me to switch between a dark & light theme. I mainly use
" the dark theme, but when I'm sitting outside, the light theme can be much
" more readable
function! ColorschemeToggle()
    if g:colors_name == 'flattened_dark'
        colorscheme flattened_light
    else
        colorscheme flattened_dark
    endif
endfunction

nnoremap <silent> <leader>c :call ColorschemeToggle()<CR>

" As I'm constantly tweaking my config, I use keybindings to easily open &
" source it without leaving my session
nnoremap <silent> <leader>vs :source $MYVIMRC<CR>
" Opens CtrlP in my config directory
nnoremap <silent> <leader>ve :split<CR>:exec 'CtrlP ' . fnamemodify($MYVIMRC, ':h')<CR>

" This was probably one of the best ideas I found (it wasn't my original idea).
" By remapping Esc to jk, I could switch between modes without moving my hands.
" This improved my speed by much more than I was expecting, and helped with not
" straining my hands as much.
inoremap jk <Esc>
inoremap <Esc> <nop>

" I use this binding to quickly switch between two files.
nnoremap <leader>a <C-^>

" Terminal keybindings
" I use the terminal inside Neovim a lot, so I have some keybindings to easily
" open one
" Use jk in terminal as well
tnoremap <silent> jk <C-\><C-n>

" I explicitely use $SHELL, because my main shell is not necessarily Bash, and
" I want to use my main shell inside Vim as well
nnoremap <silent> <leader>rr :e term://$SHELL<CR>
nnoremap <silent> <leader>rh :vsp<CR>:wincmd h<CR>:e term://$SHELL<CR>
nnoremap <silent> <leader>rl :vsp<CR>:e term://$SHELL<CR>
nnoremap <silent> <leader>rk :sp<CR>:wincmd k<CR>:e term://$SHELL<CR>
nnoremap <silent> <leader>rj :sp<CR>:e term://$SHELL<CR>
