" File -----------------------------------------------------------------------
set autochdir " ファイルオープン時自動chdir
set autoread  " ファイル更新時自動再読み込み

" Encoding -------------------------------------------------------------------
set termencoding=utf8
set encoding=utf8
set fileencodings=utf-8,cp932,sjis,euc-jp,latin1

" Indent ---------------------------------------------------------------------
set tabstop=4       " Tab文字の展開数
set shiftwidth=4    " cindent, autoindentで挿入されるインデント幅
set softtabstop=4   " Tabキーにより挿入するスペース数
set noexpandtab     " Tabキーによりスペースを挿入する
set smartindent

" Input Assistance -----------------------------------------------------------
set backspace=indent,eol,start   " バックスペースで特殊記号を削除可能にする
set clipboard=unnamed,autoselect " クリップボードを利用する
set virtualedit=block            " C-vの矩形選択で行末よりも後にカーソルを移動

" Appearance -----------------------------------------------------------------
set cursorline " 現在行をハイライト
"set number     " 行数表示
set title      " ウィンドウにタイトルを表示
set ruler

" Search ---------------------------------------------------------------------
set incsearch   " インクリメンタルサーチ
set ignorecase  " 大文字小文字を区別しない
set smartcase   " 大文字で検索された場合 case sensitive にする

" Plug-in --------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'w0ng/vim-hybrid'
call plug#end()

