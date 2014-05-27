set nocompatible
syntax on
set number
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set cursorline "or set cul
set wildmenu "awesome autocomplete for normalmode
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

execute pathogen#infect()
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let g:netrw_liststyle=3 " Use tree-mode as default view
let g:netrw_browse_split=4 " Open file in previous buffer
let g:netrw_preview=1 " preview window shown in a vertically split
let g:netrw_winsize=35

let wiki_1 = {}

let wiki_2 = {}
let wiki_2.path = '~/cooking/'

let wiki_3 = {}
let wiki_3.path = '~/projects_wiki/'

let g:vimwiki_list = [wiki_1, wiki_2, wiki_3]
