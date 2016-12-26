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
" Start Vim Vundle
"---------------------------
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" " required!
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" " ...
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


" "-------------------------
" " End VimVundle
" "-------------------------
