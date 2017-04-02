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

"行番号
set number
"インデントの設定
set autoindent

"新しい行を作ったときに高度な自動インデントを行う
set smartindent

"シフト移動幅
set shiftwidth=4

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
