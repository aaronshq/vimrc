"基本配置
set number
set background=dark
syntax on
syntax enable
set showcmd
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set encoding=utf-8
set title  " show file in titlebar"
set backspace=2
set listchars=tab:>-,trail:-
set list "显示空格键
set nowrap "关闭软拆行
set colorcolumn=80
set noai
set mouse=a
set mousehide
set wrap
set scrolloff=3 "上下滚动时保留头部和尾部3行，方便阅读上下文

"INDENT
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set expandtab "tab 变成空格

"set textwidth=79
set fileformat=unix

"SEARCH
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan " 禁止在搜索到文件两端时重新搜索
"set incsearch " 输入搜索内容时就显示搜索结果


" highlight current line
set nocursorline "cursorcolumn
set hlsearch

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-W> <C-W><C-W>

nnoremap <C-p> :set invpaste paste?<CR>

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Enable folding
"set foldmethod=indent
"set foldlevel=99

" Enable folding with the spacebar
"nnoremap <space> za

"POWERLINE
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

set laststatus=2 " Always display the statusline in all windows
"set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim

"KEY MAPPING
"Jump to next window
imap <F2> <ESC><F2>
nmap <F1> <Esc>
imap <F1> <Esc>

"VUNDLE
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"------------------
"" Code Completions
"------------------
Bundle 'Raimondi/delimitMate'


"Bundle 'Valloric/YouCompleteMe'
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_show_diagnostics_ui = 1
"map <C-g> :YcmCompleter GoToDefinitionElseDeclaration<CR>
"map <C-g> :YcmCompleter GoTo<CR>

"" snippets
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
"let g:snips_trigger_key = '<C-\>'
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger 
"
" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

Bundle 'scrooloose/syntastic'
"Bundle 'andviro/flake8-vim'
"let g:PyFlakeForcePyVersion = 3

"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'taglist.vim'
nnoremap <silent> <C-y> :TlistToggle<CR>
let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_File_Fold_Auto_Close=1       "只显示当前文件tag，其它文件的tag都被折叠起来
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的 

" on-GitHub repos
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
"Bundle 'garbas/vim-snipmate'

" Optional:
"Bundle 'honza/vim-snippets'

"Bundle 'https://github.com/ervandew/supertab'
"let g:SuperTabDefultCompletionType='context'
"let g:SuperTabDefaultCompletionType = "<C-X><C-P>"

"Bundle 'git://git.wincent.com/command-t.git'

" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
"

map <leader><leader> :q<CR>


