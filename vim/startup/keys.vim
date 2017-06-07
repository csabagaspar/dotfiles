let mapleader = ","
let g:mapleader = ","

inoremap jj <Esc>

map <Leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

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

execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==

"inoremap <M-j> <Esc>:m .+1<CR>==gi
"inoremap <M-k> <Esc>:m .-2<CR>==gi
"vnoremap <M-j> :m '>+1<CR>gv=gv
"vnoremap <M-k> :m '<-2<CR>gv=gv
