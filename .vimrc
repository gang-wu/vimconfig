syntax on
filetype on
filetype plugin on
set laststatus=2
set smartindent
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set number
set ruler
set hls
set foldmethod
set expandtab
set helplang=cn
set rtp+=/usr/share/vim/vimfiles

call pathogen#infect()


""""""""""""""""""""""""""
" pythondict configuration
""""""""""""""""""""""""""
let g:pydiction_location = '/Users/ycwg0103/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 20
""""""""""""""""""""""""""
" nerdtree configure
""""""""""""""""""""""""""

""""""""""""""""""""""""""
" Java Complete 
""""""""""""""""""""""""""
setlocal omnifunc=javacomplete#Complete


""""""""""""""""""""""""""
" TagList
""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags -R"
let Tlist_Use_Right_Window=1 

" if the taglist is the last windows, exit vim
let Tlist_Exit_OnlyWindow = 1
" only display tags of the current file
let Tlist_Show_One_File = 1
" Sort type ‘name’ or ‘order’
let Tlist_Sort_Type = "name"
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_Menu=1
"let Tlist_Auto_Open=1
"let Tlist_Compact_Format = 1
let g:tlist_php_settings = 'php;c:class;f:function'
map <D-7> :TlistToggle <CR>


"""""""""""""""""""""""""""""""
" Ctag
"""""""""""""""""""""""""""""""
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags
set tags+=./tags "add current directory's generated tags file

"""""""""""""""""""""""""""""""
" Enable omni completion.
"""""""""""""""""""""""""""""""
set wildmenu 

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=xmlcomplete#CompletePHP

"""""""""""""""""""""""""""""""
" winManager setting
"""""""""""""""""""""""""""""""
let g:winManagerWindowLayout='NERDTree|TagList,BufExplorer'
let g:winManagerWidth = 30
let g:AutoOpenWinManager=1
nmap <silent> <F8> :WMToggle<cr>

"""""""""""""""""""""""""""""""
" powerline setting
"""""""""""""""""""""""""""""""
 
"powerline{
 set guifont=PowerlineSymbols\ for\ Powerline
 set nocompatible
 set t_Co=256
 set laststatus=2
let g:Powerline_symbols = 'fancy'
 "}

 
""""""""""""""""""""""""""""""""""""""
" Vim Javascript Configuration
""""""""""""""""""""""""""""""""""""""
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

