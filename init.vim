set columns=230                     "画面サイズを変更（横）
set lines=60                        "画面サイズを変更（縦）
set number                          "行番号を表示
set autoindent                      "改行時に自動でインデントする
set tabstop=4                       "タブを何文字の空白に変換するか
set shiftwidth=4			        "自動インデント時に入力する空白の数
set expandtab                       "タブ入力を空白に変換
set splitright                      "画面を縦分割する際に右に開く
set clipboard=unnamed               "yank した文字列をクリップボードにコピー
set hls                             "検索した文字をハイライトする
set hidden                          "Buffer間の移動で保存を要求されない
set mouse=a                         "Mouseでカーソル移動できる
set backspace=indent,eol,start      "バックスペースでインデントや改行を削除できるようにする
set wrapscan                        "検索時にファイルの最後まで行ったら最初に戻る
set showmatch                       "括弧入力時に対応する括弧を表示
set wildmenu                        "コマンドライン保管するときに強化されたものを使う
set formatoptions+=mM               "テキスト挿入中の自動折返しを日本語対応させる
set ruler

set completeopt=menuone             "previewが表示されないようにする
set relativenumber                  "行番号を相対位置で表示する
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
set noswapfile                      "スワップファイルを作らない

" ------------------------------------------------------------                                    
"  key bind                                    
" ------------------------------------------------------------                                    
" defult nop                                    
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Right> <Nop>
nnoremap <Left> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Right> <Nop>
inoremap <Left> <Nop>

vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Right> <Nop>
vnoremap <Left> <Nop>

"[jj]でインサートモードを抜ける
inoremap <silent> jj <ESC>
"行番号の相対表示・絶対表示をF3で切り替える
nnoremap <F3> :<C-u>setlocal relativenumber!<CR>

" for Python
let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'
" let g:python3_host_prog = system('(type pyenv &>/dev/null && echo -n "$(pyenv root)/versions/$(pyenv global)/bin/python") || echo -n $(which python3)')

if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#load_toml('~/.config/nvim/dein_python.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif
filetype plugin indent on
syntax enable

if has('nvim')
    set termguicolors
    let ayucolor="light"
    let ayucolor="mirage"
    let ayucolor="dark"
"    colorscheme ayu
endif

