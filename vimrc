" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Turn on omni completion 
autocmd FileType python set omnifunc=syntaxcomplete#Complete 

" My own settings
set tabstop=4
set shiftwidth=4
set expandtab
set backupdir=$USERPROFILE\temp

" vimwiki settings
let g:vimwiki_list=[{'path':'C:\Users\ywang\git\vimwiki',
            \ 'path_html':'C:\Users\ywang\vimwiki_html',
            \ 'template_path':'C:\Users\ywang\git\wikitemplates\',
            \ 'template_default':'my_default',
            \ 'template_ext':'.html'
            \}]
" hide my %pp directives
au BufEnter *.wiki syntax match mypp '^%pp .*' conceal cchar=%

" XML folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" Open URL under cursor
function! Browser ()
  let line0 = getline (".")
  let line = matchstr (line0, "http[^ ]*")
  if line=="" 
      let line = matchstr (line0, "ftp[^ ]*")
  endif
  if line==""
      let line = matchstr (line0, "file[^ ]*")
  endif
  " echo line
  exec ":silent !firefox ".line
endfunction
map \aw :call Browser ()<CR>

" Solarized colorscheme
let g:solarized_underline = 0
syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

" GUI options
" remove toolbar
if has('gui_running')
    set guioptions-=T
endif

" Signature
nmap m<CR> :SignatureToggle<CR>

