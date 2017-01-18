execute pathogen#infect()
filetype plugin indent on
syntax enable

set nocompatible
set autoread                " Set to auto read when a file is changed from
set ruler                   " Always show current position
set number                  " line numbers
set ignorecase              " ignore case when searching
set autoindent              " automatic indent new lines
set showcmd
set list                    " show trailing whiteshace and tabsvi
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+,eol:¬
"
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set shortmess=a
set hlsearch                " Highlight search results
set smartcase               " When searching try to be smart about cases
set showmatch               " Show matching brackets when text indicator is over them
set laststatus=2
set noshowmode
set encoding=utf-8
set nobackup
set nowb
set noswapfile
let mapleader = ","
let g:mapleader = ","
set ff=unix

set background=dark
colorscheme dracula 
set t_Co=256
set timeout timeoutlen=3000 ttimeoutlen=100
"easymotion
map <Leader> <Plug>(easymotion-prefix)

"pangloss/vim-javascript
let g:javascript_plugin_flow = 1

"ctrlpvim/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/coverage/*     " Linux/MacOSX
let g:ctrlp_working_path_mode = 'ra'

"scrooloose/nerdtree
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"wikitopian/hardmode
""autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

"editorconfig
let g:EditorConfig_max_line_indicator = "line"

"jsx
let g:jsx_ext_required = 0

"onmi func

augroup omnifuncs
	autocmd!
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
	autocmd Filetype java setlocal omnifunc=javacomplete#Complete
	autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
augroup end

"ternjs
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'
let g:tern_show_signature_in_pum = 1
autocmd FileType javascript setlocal omnifunc=tern#Complete

highlight Pmenu ctermbg=238 gui=bold
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"


let delimitMate_expand_cr = 1

" for .hql files
au BufNewFile,BufRead *.hql set filetype=hive expandtab
"
" " for .q files
au BufNewFile,BufRead *.q set filetype=hive expandtab
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
