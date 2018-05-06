" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

"カラースキーム
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
syntax on

"行番号
set number
"インデントの設定
set autoindent

"シフト移動幅
set shiftwidth=2

"行頭の余白内でTabを打ち込むと、'shiftwidth'の数だけインデントする
set smartindent

"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

"インクリメンタルサーチ設定
set incsearch

"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch

"全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')

"plugin
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('scrooloose/nerdtree')

call dein#end()

"もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif
filetype plugin indent on
" 行番号の色を設定
hi LineNr ctermbg=5 ctermfg=0
hi CursorLineNr ctermbg=4 ctermfg=0
set cursorline
hi clear CursorLine

nnoremap <silent><C-e> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" 不可視ファイルを表示する
let NERDTreeShowHidden = 1
" ツリーと編集領域を移動する
nmap <Leader><Tab> <C-w>w
