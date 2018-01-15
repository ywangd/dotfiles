set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
 
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-vinegar'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'indentpython.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
 
" Force *.md file to be markdown instead of Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch

" From https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
let python_highlight_all=1

" --------------------------------------------------
" UltiSnips
" --------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" ------------------------------------------------
"  YouCompleteMe 
" ------------------------------------------------
" Esure the autocomplete window goes away when we are done with it
let g:ycm_autoclose_preview_window_after_completion=1

" Shortcut for goto definition
map <leader>g  :YcmCompleter GoTo<CR>

" Let YCM read tags from Ctags file
let g:ycm_collect_identifiers_from_tags_files = 1

" Completion for pgramming language's keyword
let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']


" --------------------------------------------------
" NerdTree
" --------------------------------------------------
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F4> :NERDTreeFind<CR>


" --------------------------------------------------
"  Syntastic
" --------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:sytastic_python_checkers = ['pylint']
let g:syntastic_mode_map = {"mode": "passive"}


" --------------------------------------------------
" Tagbar toggle
" --------------------------------------------------
noremap <F8> :TagbarToggle<CR>


" --------------------------------------------------
" MiniBufExpl
" --------------------------------------------------
"  C-m is the same as <CR>
" noremap <C-m> :MBEToggle<CR>
