"pangloss/vim-javascript
"let g:javascript_conceal_function             = "
"let g:javascript_conceal_null                 = ""
"let g:javascript_conceal_this                 = "@"
"let g:javascript_conceal_return               = ""
"let g:javascript_conceal_undefined            = "
"let g:javascript_conceal_NaN                  = ""
"let g:javascript_conceal_prototype            = "
"let g:javascript_conceal_static               = ""
"let g:javascript_conceal_super                = "
"let g:javascript_conceal_arrow_function       = ""
"let g:javascript_conceal_noarg_arrow_function = "
"let g:javascript_conceal_underscore_arrow_function = ""



"scrooloose/nerdtree
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
"autocmd BufWinEnter * NERDTreeFind


map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"editorconfig
let g:EditorConfig_max_line_indicator = "line"

"jsx
"let g:jsx_ext_required = 0

"delimitMate
runtime macros/matchit.vim
let delimitMate_autoclose = 1
au FileType js,ts,jsx,tsx,html,css,scss let b:delimitMate_autoclose = 1
let delimitMate_matchpairs = "(:),[:],{:}"
au FileType js,ts,jsx,tsx,html,css,scss let b:delimitMate_matchpairs = "(:),[:],{:}"
"let delimitMate_expand_cr = 1

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '¦'


"ultisnip
let g:UltiSnipsSnippetsDir="~/dotfiles/vim/ultisnips"
let g:UltiSnipsSnippetDirectories=["ultisnips"]
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"

"vim-notes
let g:notes_directories = ['~/workspaces/notes']
let g:notes_suffix = '.txt'

"closetag
"let g:closetag_filenames = "*.html,*.jsx,*.js"

"MatchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xml' : 1,
    \ 'javascript.jsx' : 1,
    \ 'javascript.tsx' : 1,
    \ 'javascript' : 1,
    \}
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_count = 1


" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"match highli
"hi MatchParen ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen
"
"emmet
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css,jsx,tsx EmmetInstall

"split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"tagbar
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'a:=>',
    \ 'C:Components',
    \ 'T:Types',
    \ 'X:Contexts',
  \ ]
\ }
let g:tagbar_type_typescriptreact = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'a:=>',
    \ 'C:Components',
    \ 'T:Types',
    \ 'X:Contexts',
  \ ]
\ }
