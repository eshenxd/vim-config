let mapleader=";"

filetype on
filetype plugin on

" 定义保存，关闭vim
nmap <leader>wq :wq<CR>
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <leader>WQ :wa<CR>:q<CR>
nmap <leader>Q :qa!<CR>

" 定义光标在窗口之间移动
nnoremap nw <C-W><C-W>
nnoremap <leader>lw <C-W>l
nnoremap <leader>hw <C-W>h
nnoremap <leader>kw <C-w>k
nnoremap <leader>jw <C-W>j

nmap <leader>M %

autocmd BufWritePost $MYVIMRC source $MYVIMRC

set incsearch
set nocompatible
set ignorecase
set wildmenu

" vudle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-scripts/vimprj'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'suan/vim-instant-markdown'
call vundle#end()
filetype plugin indent on

let g:rainbow_active=1

set background=dark
"colorscheme solarized
"colorscheme desert
colorscheme molokai
"colorscheme phd

set nu
syntax on
set nobackup
set confirm
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set autoread
set cindent
set autoindent
set smartindent
set ruler

set laststatus=2
set showcmd

let g:Powerline_colorscheme='solarized256'

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <leader>i <Plug>IndentGuidesToggle

nmap <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=20
let NERDTreeWinPos="right"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
set cursorline " 设置目前行下划线提示

" 定义光标在minibuffer移动
" 在minibuffer上按s键，窗口上下排列，v键左右排列
map <leader>bl :MBEToggle<CR>
map <leader>bf :MBEbn<CR>
map <leader>bb :MBEbp<CR>

" 定义snippet选中快捷键
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" cpp-enhanced-highlight setting
let g:cpp_class_scope_hightlight = 1
let g:cpp_member_variable_hightlight = 1
let g:cpp_class_decl_hightlight = 1

" switch between .h and .cpp
nmap <silent> <leader>sw :FSHere<CR>

" tagbar config
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>ilt :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'c:classes:0:1',
        \ 'd:macros:0:1',
        \ 'e:enumerators:0:0', 
        \ 'f:functions:0:1',
        \ 'g:enumeration:0:1',
        \ 'l:local:0:1',
        \ 'm:members:0:1',
        \ 'n:namespaces:0:1',
        \ 'p:functions_prototypes:0:1',
        \ 's:structs:0:1',
        \ 't:typedefs:0:1',   
        \ 'u:unions:0:1',
        \ 'v:global:0:1',
        \ 'x:external:0:1'
    \ ],
    \ 'sro' : '::',
    \ 'kind2scope' :{
        \ 'g' : 'enum',
        \ 'n' : 'namespace',
        \ 'c' : 'class',
        \ 's' : 'struct',
        \ 'u' : 'union'
        \ },
        \ 'scope2kind' : {
            \ 'enum' : 'g',
            \ 'namespace' : 'n',
            \ 'class' : 'c',
            \ 'struct' : 's',
            \ 'union' : 'u'
            \
        \ }
\ } 

" nerdtree-git-plugin config
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" 设置indexer调用 ctags的参数
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" 设置snippets的路径
let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
