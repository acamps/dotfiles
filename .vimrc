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

let wiki_4 = {}
let wiki_4.path = '~/people_wiki/'

let g:vimwiki_list = [wiki_1, wiki_2, wiki_3, wiki_4]

" {{{ KEY MAPPINGS
nmap ¡ <Plug>VimwikiVSplitLink
" }}}

let laststatus=2
"let g:airline#extensions#bufferline#enabled = 1

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

set backspace=indent,eol,start " makes vim able to delete end of line character, behaving like other editors.

" FOLDING config
set foldmethod=expr
let g:vimwiki_folding = 'list' 

set history=500

" tab navigation like firefox
"nnoremap <C-S-tab> :tabprevious<CR>
"nnoremap <C-tab>   :tabnext<CR>
"nnoremap <C-t>     :tabnew<CR>
"inoremap <C-S-tab> <Esc>:tabprevious<CR>i
"inoremap <C-tab>   <Esc>:tabnext<CR>i
"inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

autocmd BufWritePost *.wiki execute ":silent !Git add " . expand("%:p") 

colorscheme github
