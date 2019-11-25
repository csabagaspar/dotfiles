let mapleader = ","
let g:mapleader = ","

inoremap jj <Esc>
map gb :bn<CR>


map <Leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

"find in files
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

"clear all register
command! ClearReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor

no <Up> <NOP>
no <Down> <NOP>
no <Left> <NOP>
no <Right> <NOP>

ino <Up> <NOP>
ino <Down> <NOP>
ino <Left> <NOP>
ino <Right> <NOP>

vno <Up> <NOP>
vno <Down> <NOP>
vno <Left> <NOP>
vno <Right> <NOP>


" Mappings for moving lines and preserving indentation
" http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"execute "set <M-j>=\ej"
"execute "set <M-k>=\ek"
"nnoremap <M-j> :m .+1<CR>==
"nnoremap <M-k> :m .-2<CR>==

"inoremap <M-j> <Esc>:m .+1<CR>==gi
"inoremap <M-k> <Esc>:m .-2<CR>==gi
"vnoremap <M-j> :m '>+1<CR>gv=gv
"vnoremap <M-k> :m '<-2<CR>gv=gv
