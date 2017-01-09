" シンタックスハイライト ON
syntax on

" バックスペースで文字削除
set backspace=indent,eol,start

"内容が変更されたら自動的に再読み込み
set autoread

"括弧の対応をハイライト
set showmatch

"ファイル名表示
set statusline+=%<%F

"現在文字行/全体行表示
set statusline+=[L=%l/%L]

"自動インデントなし
set noautoindent
set nosmartindent 

"自動コメントアウトなし
:set paste

" TABキーを押した際にタブ文字の代わりにスペースを入れる
set expandtab
set tabstop=2
set shiftwidth=2



"---------------------------
" Start NeoBundle
"---------------------------
if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" インストールするプラグインをここに記述
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'maxmellon/vim-jsx-pretty'
NeoBundle 'othree/yajs.vim'
NeoBundle 'Valloric/YouCompleteMe'

call neobundle#end()


filetype plugin indent on

" "-------------------------
" " End NeoBundle
" "-------------------------
