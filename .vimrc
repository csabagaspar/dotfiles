call plug#begin() 
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dkprice/vim-easygrep'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'editorconfig/editorconfig-vim'
"Plug 'wikitopian/hardmode'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'ternjs/tern_for_vim'
call plug#end()

filetype plugin indent on
syntax enable

set nocompatible
set autoread                " Set to auto read when a file is changed from
set ruler                   " Always show current position
set number                  " line numbers
set ignorecase              " ignore case when searching
set autoindent              " automatic indent new lines
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

set background=dark
colorscheme dracula 
set t_Co=256

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

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

