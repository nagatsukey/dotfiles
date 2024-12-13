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

" TABキーを押した際にタブ文字の代わりにスペースを入れる
set expandtab
set tabstop=2
set shiftwidth=2

"折り返し無し
set nowrap

"行表示
set number
