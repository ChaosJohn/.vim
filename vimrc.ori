call pathogen#infect()
syntax on
filetype plugin indent on

"VIMIDE vimrc basic settings
"--------start---------
set fileencodings=ucs-bom,utf-8,cp936
set helplang=cn

set shiftwidth=2
set tabstop=2
set expandtab
set nobackup
set noswapfile
set nowb
set backspace=start,indent,eol
set nu!
set autoindent
set smartindent
set wrap

set noerrorbells
set novisualbell

filetype plugin on
filetype indent on

syntax on
set ruler

"NERDTree"
map <> :NERDTree<cr>
map <C-o> :TlistToggle<cr>
vmap <C-c> "+y
set mouse=a
autocmd VimEnter * NERDTree
"autocmd VimEnter * snipmate

autocmd BufEnter * silent! lcd %:p:h
"--------end--------

"Taglist"
autocmd VimEnter * Tlist
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的。
let Tlist_Exit_OnlyWindow = 1          "如果 taglist 窗口是最后一个窗口，则退出 vim。
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示 taglist 窗口。

"miniBufExplorer"
  let g:miniBufExplMapWindowNavVim = 1 
  let g:miniBufExplMapWindowNavArrows = 1 
  let g:miniBufExplMapCTabSwitchBufs = 1 
  let g:miniBufExplModSelTarget = 1


inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

"""python-complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
"lazy for python-complete"
let g:pydiction_location = '/Users/chaos/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 20



"""fold"
""http://vim.wikia.com/wiki/All_folds_open_when_open_a_file
"set foldmethod=indent
"set foldlevelstart=4
set foldmethod=syntax
" Note, perl automatically sets foldmethod in the syntax file
"autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
"autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR



"""Powerline""256 color
let g:Powerline_symbols = 'fancy'
let t_Co=256
set nocompatible
set laststatus=2
set encoding=utf-8
"choose theme
let g:Powerline_symbols = 'unicode'
set term=builtin_xterm
set term=xterm-256color



"""indentLine
map Ig :IndentGuidesToggle
"set list lcs=tab:\┆\
"let g:indentLine_color_term = 239

"if !has('conceal')
"    finish
"endif

"syntax keyword rubyControl not conceal cchar=¬
"syntax keyword rubyKeyword lambda conceal cchar=λ

"set conceallevel=2

"set ts=4 sw=4 et
"let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1



"""python-mode
" Disable pylint checking every save
let g:pymode_lint_write = 0

" Set key 'R' for run python code
let g:pymode_run_key = 'R'



"""Gundo
"nnoremap <F5> :GundoToggle<CR>



"""undotree
"snnoremap <F5> :UndotreeToggle<cr>



"""closetag for html/xml
"let g:closetag_html_style=1
"source ~/.vim/bundle/closetag.vim 
"au Filetype html,xml,xsl source ~/.vim/bundle/closetag.vim 



"""font & color
"set guifont=Monaco\ 9



"""map ESC to ii
imap ii <Esc>



"""javascript autocomplete
set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS



"""dict
"nmap <silent><leader>d :!curl dict://dict.org/d:<cword><CR><CR>