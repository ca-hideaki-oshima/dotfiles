"deinの初期設定
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/.vim/dein')
let s:toml_dir = expand('~/.config/nvim')

"dein settings
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

   "Load TOML
    let s:toml = s:toml_dir . '/dein.toml'
    let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

    call dein#load_toml(s:toml, {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})

   "finalize
    call dein#end()
    call dein#save_state()
endif

" vimprocだけは最初にインストールしてほしいお気持ち
if dein#check_install(['vimproc'])
  call dein#install(['vimproc'])
endif
" その他インストールしていないものはこちらに入れる
if dein#check_install()
  call dein#install()
endif

"nvimの基本設定
set encoding=utf-8
set number
set autoindent
set shiftwidth=2
set smartindent
set whichwrap=b,s,h,l,<,>,[,]
set incsearch
set showmatch
set ruler
set hidden
set history=2000
set wildmenu
set wildmode=longest:full,full
set clipboard=unnamed

" インサートモードでのカーソルの設定
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon1
set guicursor+=i:blinkwait10

" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" 入力中のコマンドをステータスに表示する
set showcmd
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" コマンドラインの補完
set wildmode=list:longest
" タブの代わりにスペースを挿入する
set expandtab
" ステータスバーを常に表示する
set laststatus=2
" マウスを有効にする
set mouse=a
" 編集中のファイル名を表示する
set title

" 補完の際の大文字小文字の区別しない
set infercase
" 小文字の検索でも大文字も見つかるようにする
set ignorecase
" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#align_class = 1
let g:deoplete#sources#go#package_dot = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_theme = 'papercolor'

highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

" 不可視ファイルを表示する
let NERDTreeShowHidden = 1

" ツリーと編集領域を移動する
nmap <Leader><Tab> <C-w>w

" ファイルが指定されていなければNERD treeを有効にする
if argc() == 0
  let g:nerdtree_tabs_open_on_console_startup = 1
end

autocmd vimenter * NERDTree

"keybind設定
" インサートモードから抜ける
inoremap jj <ESC>
" インサートモードでもkeybindでカーソル移動
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-h> <Left>
imap <C-l> <Right>
" delとBSが押しづらい
imap <C-b> <BS>
imap <C-d> <Del>

" Go関連
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_fmt_experimental = 1
let g:go_fmt_options = {
                \ 'gofmt': '-s',
                \ 'goimports': '',
                \ }
let g:go_metalinter_autosave = 0
let g:go_metalinter_excludes = ['.*\.pb\.go', '.*_mock\.go']
let g:go_metalinter_deadline = '1m'
let g:go_term_enabled = 1

let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
filetype on 
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" golint
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
let g:syntastic_go_checkers = ['go', 'golint']

" GoFmtなどkeybind

