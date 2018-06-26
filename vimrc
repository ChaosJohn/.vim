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
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git' "need vim compiled with ruby
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} "ZenCoding&Emmet alternative
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree' 
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic' 
Plugin 'taglist.vim' 
Plugin 'majutsushi/tagbar'
" TabBar derived from miniBufExplorer 
"Plugin 'TabBar' 
Plugin 'humiaozuzu/tabbar' "http://vimawesome.com/plugin/tabbar-red 
"Plugin 'powerline/powerline'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'indentLine.vim' 
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'  "depends on unite.vim 
"Plugin 'ryanoasis/vim-devicons' 
Plugin 'kien/ctrlp.vim' 
Plugin 'tmhedberg/SimpylFold' 
Plugin 'tpope/vim-surround' 
Plugin 'Chiel92/vim-autoformat'
"Plugin 'ZenCoding.vim' "ZenCoding has been renamed Emmet
Plugin 'Emmet.vim'
Plugin 'easymotion/vim-easymotion' 
"Plugin 'msanders/snipmate.vim' 
Plugin 'drmingdrmer/xptemplate' 
Plugin 'godlygeek/tabular' 
Plugin 'luochen1990/rainbow'
"Plugin 'Valloric/YouCompleteMe' 
"Plugin 'leafo/moonscript-vim'
Plugin 'rust-lang/rust.vim'

"Plugin 'altercation/vim-colors-solarized'
"Plugin 'chriskempson/vim-tomorrow-theme' 
"Plugin 'tomasr/molokai'

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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""Basic Settings"""
set fileencodings=ucs-bom,utf-8,cp936
"set helplang=cn

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
let loaded_matchparen = 1 

"set noerrorbells
"set novisualbell

filetype plugin on
filetype indent on

syntax on
set ruler

set mouse=a 

""theme
syntax enable
"set background=dark
"colorscheme solarized 
"colorscheme Tomorrow-Night-Eighties
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""NERDTree"""
autocmd vimenter * NERDTree
"let g:NERDTreeDirArrows = 0
"let g:NERDTreeDirArrows = 1
"let g:NERDTreeDirArrowExpandable = '>'
"let g:NERDTreeDirArrowCollapsible = '_'
map <silent><leader>tn :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""nerdtree-git-plugin"""
let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "â¹",
      \ "Staged"    : "â",
      \ "Untracked" : "â­",
      \ "Renamed"   : "â",
      \ "Unmerged"  : "â",
      \ "Deleted"   : "â",
      \ "Dirty"     : "â",
      \ "Clean"     : "âï¸",
      \ "Unknown"   : "?"
      \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""TagList""" 
"autocmd VimEnter * Tlist
"let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Show_One_File = 1            "Show the tag of current file instead of tags of multiple files at the same time. 
let Tlist_Exit_OnlyWindow = 1          "If the Taglist window is the last window, then vim exits. 
let Tlist_Use_Right_Window = 1         "Show Taglist Window on the right side. 
let Tlist_Sort_Type='name'
"let Tlist_WinWidth=20
"map <C-i> :TlistToggle<cr>
"map <S-A-F10> :TlistToggle<CR>:TlistAddFilesRecursive . *.{cpp,c,C,h,hpp,cc,cxx}<CR>
map <silent><leader>tl :TlistToggle<CR>:TlistAddFilesRecursive . *.{cpp,c,C,h,hpp,cc,cxx}<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""TagBar"""
nmap <F6> :TagbarToggle<CR>
nmap <F5> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""Fold[Built-in]"""
"set foldmethod=indent
"set foldlevelstart=4
set foldmethod=syntax
"" Note, perl automatically sets foldmethod in the syntax file
"autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
"autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""vim-airline""" 
"let g:airline_theme='term' 
let g:airline_theme='badwolf' 
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""indentLine""" 
map Il :IndentLinesToggle
"let g:indentLine_char='|'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""vim-devicon""" 
"let g:webdevicons_enable_airline_statusline = 1 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""netrw[Built-in Explorer]"""
"let g:netrw_banner       = 0
"let g:netrw_keepdir      = 0
let g:netrw_liststyle    = 3 "1 or 3
"let g:netrw_sort_options = 'i'
""Open it at startup if no argument was specified ($ vim):
"autocmd VimEnter * if !argc() | Explore | endif
""Open it only when the specified argument is a directory ($ vim /tmp):
"autocmd VimEnter * if isdirectory(expand('<afile>')) | Explore | endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""syntastic""" 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_rust_checkers = ['rustc']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""rainbow""" 
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""switch between auto-indent and auto-comment"""
"set paste 
"set no paste 
set pastetoggle=<F9>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""ShortCuts 
map <silent><leader>ft :Autoformat
map <silent><leader>mk :make
map <silent><leader>sh :!zsh 
map <silent><leader>nt :NERDTreeToggle
map <silent><leader>bd :Tbbd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""keymap 
"imap ii <Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('win32') 

elseif has('unix') 

elseif has('mac') 
  set clipboard=unnamed 
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
