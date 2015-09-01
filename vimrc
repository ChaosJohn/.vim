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

"set background=dark 
"colorscheme solarized 
colorscheme Tomorrow-Night-Eighties

set noerrorbells
set novisualbell

filetype plugin on
filetype indent on

syntax on
set ruler

"NERDTree"
map <> :NERDTree<cr>
map <S-A-F9> :NERDTreeToggle<CR>
map ` :NERDTreeFind<CR>
"let NERDTreeWinSize=20  
let NERDTreeCaseSensitiveSort=0
let NERDTreeHighlightCursorline=1
let NERDTreeShowBookmarks=1
"let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['.*\.o$']
let NERDTreeIgnore+=['.*\~$']
let NERDTreeIgnore+=['.*\.out$']
let NERDTreeIgnore+=['.*\.so$', '.*\.a$'] 
let NERDTreeIgnore+=['tags$'] 

vmap <C-c> "+y
set mouse=a
autocmd VimEnter * NERDTree
"autocmd VimEnter * snipmate

autocmd BufEnter * silent! lcd %:p:h
"--------end--------

"Taglist"
"autocmd VimEnter * Tlist
"let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的。
let Tlist_Exit_OnlyWindow = 1          "如果 taglist 窗口是最后一个窗口，则退出 vim。
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示 taglist 窗口。
let Tlist_Sort_Type='name'
"let Tlist_WinWidth=20
"map <C-i> :TlistToggle<cr>
"map <S-A-F10> :TlistToggle<CR>:TlistAddFilesRecursive . *.{cpp,c,C,h,hpp,cc,cxx}<CR>
map <silent><leader>tl :TlistToggle<CR>:TlistAddFilesRecursive . *.{cpp,c,C,h,hpp,cc,cxx}<CR>

"miniBufExplorer"
  let g:miniBufExplMapWindowNavVim = 1 
  let g:miniBufExplMapWindowNavArrows = 1 
  let g:miniBufExplMapCTabSwitchBufs = 1 
  let g:miniBufExplModSelTarget = 1


"""PhpDoc 
"inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
"nnoremap <C-P> :call PhpDocSingle()<CR> 
"vnoremap <C-P> :call PhpDocRange()<CR> 

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



"""ctags and taglist
"设置vim搜索tags的逻辑，该目录开始往上搜索
"set tags=./tags,./TAGS,tags;~,TAGS;~
"set tags=tags,./tags,/usr/src/linux/tags 
"set tags=./tags,./TAGS,tags;~,TAGS;~,/usr/src/linux/tags
"set tags=./tags,./TAGS,tags;~,TAGS;~,/home/chaos/.vim/tags/kernel 
"set tags=./tags,./TAGS,tags;~,TAGS;~,~/.vim/tags/kernel,~/.vim/tags/apue,~/.vim/tags/src
"set tags=./tags,./TAGS,tags;~,TAGS;~
set tags=./tags,./TAGS,tags;~,TAGS;~,~/.vim/tags/src;~,~/.vim/tags/src;~

let g:clang_library_path="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib" 

"set autoread 

"""javacomplete 
"setlocal completefunc=javacomplete#CompleteParamsInfo
"autocmd FileType c set omnifunc=ccomplete#Complete
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType java set omnifunc=javacomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
if has("autocmd") 
  autocmd Filetype java setlocal omnifunc=javacomplete#Complete 
endif 


"""shortcuts 
map <silent><leader>ft :Autoformat 
map <silent><leader>mk :make 
map <silent><leader>sh :!zsh 


""""Code 
"""cscope
"if has("cscope") 
  "set cscopetag 
  "set csto=1 

  "if filereadable("cscope.out") 
    "cs add cscope.out 
  "elseif $CSCOPE_DB !="" 
    "cs add $CSCOPE_DB 
  "endif 

  "set cscopeverbose 

  "nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
  "nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
  "nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
  "nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
  "nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
  "nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
  "nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  "nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR> 
"endif 

""""""""""""""""""""""""""""""
" markbrowser setting
""""""""""""""""""""""""""""""
nmap <silent><leader>mb :MarksBrowser<cr>

""""""""""""""""""""""""""""""
" showmarks setting
""""""""""""""""""""""""""""""
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1 

""""""""""""""""""""""""""""""
" showmarks setting
""""""""""""""""""""""""""""""
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1 


""""""""""""""""""""""""""""""
" markbrowser setting
""""""""""""""""""""""""""""""
nmap <silent><leader>mb :MarksBrowser<cr> 
