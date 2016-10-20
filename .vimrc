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
"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" viコマンド時のエラー対処
if 1
  " neobundle自体をneobundleで管理
  NeoBundleFetch 'Shougo/neobundle.vim'

  " 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
endif

call neobundle#end()

" Required:
filetype plugin indent on

" "-------------------------
" " End Neobundle Settings.
" "-------------------------
