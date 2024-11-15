" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" ヘルプの表示言語の優先順位を日本語、英語の順にする
set helplang=ja,en
" 未保存で終了しようとしたときに確認する
set confirm

" ウィンドウのタイトルバーにファイル名を表示
set title
" 現在の行を強調表示
" set cursorline
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
" set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" 列の最後に移動するのを;でできるようにする
" （その影響でfind, tillコマンドで繰り返すときは$を入力することになりました）
" nnoremap ; $
" nnoremap $ ;
" 字下げ、行末、開始地点以前をBackSpaceで消去可能にする
set backspace=indent,eol,start

" マウス操作の有効化
set mouse=a

" クリップボードをVim以外のものと共通にする
set clipboard+=unnamed

" 挿入モードで移動を楽にする
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" 挿入モードのショートカットに合わせて<C-l>を左へ移動にする
" 画面の再描画は<C-@>に割り当て
nnoremap <C-l> l
nnoremap <C-@> <C-l>

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を適切な数の半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" 見た目系
" 行番号を表示
set number
" 相対行番号の表示
set relativenumber

" シンタックスハイライトの有効化
syntax enable

" 背景色の変更
" autocmd colorscheme * highlight Normal ctermbg=233

" カラースキーム
set background=dark
set termguicolors
colorscheme monokai_pro

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" 編集中の行番号をハイライトする
set cursorline
hi clear CursorLine

" プラグインの設定
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" List your plugins here
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-sensible'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'Shougo/ddc.vim'
Plug 'shun/ddc-vim-lsp'
Plug 'cohama/lexima.vim'
Plug 'vim-jp/vimdoc-ja'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'violetyk/iikanji-markdown.vim'
Plug 'sheerun/vim-polyglot'
call plug#end()
