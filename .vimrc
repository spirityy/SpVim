set nocompatible
filetype off

"编码
set fileencodings=utf-8
set encoding=utf-8

"美化
if has("gui_running")
    set go=aAce              " 去掉难看的工具栏和滑动条
    set transparency=20      " 透明背景
    set guifont=Monaco:h12   " 设置默认字体为monaco
    set showtabline=2        " 开启自带的tab栏
    set columns=300          " 设置宽
    set lines=80             " 设置长
endif

colo vividchalk

"Color Settings
set t_Co=256                 "设置256色显示
set background=dark          "使用color solarized
set cursorline               "设置光标高亮显示
set cursorcolumn             "光标垂直高亮
set ttyfast
set ruler
set backspace=indent,eol,start

let g:solarized_termtrans  = 1
let g:solarized_termcolors = 256
let g:solarized_contrast   = "high"
let g:solarized_visibility = "high"


"tab setting
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"dir
set autochdir
set scrolloff=3
set fenc=utf-8
set autoindent
set number                                    "显示行号
set hidden

"相对行号 要想相对行号起作用要放在显示行号后面
set relativenumber
"自动换行
set wrap

set ignorecase "设置大小写敏感和聪明感知(小写全搜，大写完全匹配)
set smartcase
set incsearch
set showmatch
set hlsearch

set numberwidth=4          "行号栏的宽度

set whichwrap=b,s,<,>,[,]  "让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）

"插入模式下移动
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-h> <left>

"===================================================
"修改leader键为逗号
let mapleader=","
imap jj <esc>

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"修改vim的正则表达
nnoremap / /\v
vnoremap / /\v

"使用tab键来代替%进行匹配跳转
nnoremap <tab> %
vnoremap <tab> %

"折叠html标签 ,fold tag
nnoremap <leader>ft vatzf
"使用,v来选择刚刚复制的段落，这样可以用来缩进
nnoremap <leader>v v`]

"使用,w来垂直分割窗口，这样可以同时查看多个文件,如果想水平分割则<c-w>s
nnoremap <leader>w <c-w>v<c-w>l
nnoremap <leader>wc <c-w>c
nnoremap <leader>ww <c-w>w

"tab切换
nnoremap <leader>t gt
nnoremap <leader>r gT
"使用<leader>空格来取消搜索高亮
nnoremap <leader><space> :noh<cr>

"html中的js加注释 取消注释
nmap <leader>h I//jj
nmap <leader>ch ^xx
"切换到当前目录
nmap <leader>q :execute "cd" expand("%:h")<CR>
"搜索替换
nmap <leader>s :,s///c

"BundleList
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'matchit.zip'
"Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'EasyMotion'
"Bundle 'UltiSnips'
Bundle "othree/html5.vim"
Bundle 'Shougo/neocomplcache.vim'
"Bundle 'scrooloose/syntastic'
"Bundle 'teramako/jscomplete-vim'
Bundle 'myhere/vim-nodejs-complete'
Bundle 'The-NERD-tree'
Bundle "skammer/vim-css-color"
Bundle 'majutsushi/tagbar'
Bundle 'Tabular'
Bundle 'trailing-whitespace'

"nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

"EasyMotion
let g:EasyMotion_leader_key = '<Leader><Leader>'

"The-NERD-tree
nmap <leader>nt :NERDTree<cr>:set rnu<cr>
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.$','\~$']
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos=1

"UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"Shougo/neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1

" Enable omni completion.
autocmd FileType css,scss,less setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType hjs,html,markdown,phtml setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" support amibroker language
au BufRead,BufNewFile *.afl     set filetype=amibroker
au BufRead,BufNewFile *.hjs     set filetype=html
au BufRead,BufNewFile *.coffee     set filetype=javascript

"css color
let g:cssColorVimDoNotMessMyUpdatetime = 1

"tagbar
let g:tagbar_width = 50
let g:tagbar_singleclick = 1
let g:tagbar_iconchars = ['▾', '▸']
nnoremap <leader>tb :TagbarToggle<CR>

"tabular
nmap <leader>a= :Tabularize /=<cr>
vmap <leader>a= :Tabularize /=<cr>
nmap <leader>a: :Tabularize /:\zs<cr>
vmap <leader>a: :Tabularize /:\zs<cr>

filetype plugin indent on
syntax on
