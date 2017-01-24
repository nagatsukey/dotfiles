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
NeoBundle 'cohama/lexima.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'ternjs/tern_for_vim'

call neobundle#end()

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 7
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

if !exists('g:neocomplete#sources#force_omni_input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.javascript = '\%(\h\w*\|[^. \t]\.\w*\)'
let g:neocomplete#sources#omni#input_patterns.markdown = ''
let g:neocomplete#sources#omni#input_patterns.gitcommit = ''
let g:neocomplete#sources#omni#input_patterns.cs = '[^.]\.\%(\u\{2,}\)\?'

" Plugin key-mappings.
inoremap <expr><C-g> neocomplete#undo_completion()
" inoremap <expr><C-l> neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplete#close_popup()
inoremap <expr><C-e> neocomplete#cancel_popup()

let g:neocomplete#sources#omni#functions = get(g:,  'neocomplete#sources#omni#functions',  {})
" let g:neocomplete#sources#omni#functions.javascript = 'tern#Complete'
let g:neocomplete#sources#omni#functions.javascript = 'javascriptcomplete#CompleteJS'

" Enable omni completion.
autocmd FileType css           setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags

filetype plugin indent on

" "-------------------------
" " End NeoBundle
" "-------------------------
