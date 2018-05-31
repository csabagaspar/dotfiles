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


"ctrlpvim/ctrlp.vim
let g:ctrlp_working_path_mode = ''
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|svn)$','file': '\v\.(exe|so|dll)$'}

"scrooloose/nerdtree
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"editorconfig
let g:EditorConfig_max_line_indicator = "line"

"jsx
let g:jsx_ext_required = 0

"ternjs
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'
let g:tern_show_signature_in_pum = 1
autocmd FileType javascript setlocal omnifunc=tern#Complete

"supertab
highlight Pmenu ctermbg=238 gui=bold
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabContextDefaultCompletionType = "context"

runtime macros/matchit.vim
"let delimitMate_expand_cr = 1

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '¦'

"easy motion
map <Leader> <Plug>(easymotion-prefix)
"vim-notes
let g:notes_directories = ['~/dotfiles/notes']
let g:notes_suffix = '.txt'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
