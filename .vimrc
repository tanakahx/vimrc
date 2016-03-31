" File -----------------------------------------------------------------------
set autochdir " ファイルオープン時自動chdir
set autoread  " ファイル更新時自動再読み込み
set nobackup  " バックアップファイルを作成しない
set undodir=~/vimfiles/undo

" Encoding -------------------------------------------------------------------
set termencoding=utf8
set encoding=utf8
set fileencodings=utf-8,cp932,sjis,euc-jp,latin1

" Indent ---------------------------------------------------------------------
set tabstop=4       " Tab文字の展開数
set shiftwidth=4    " cindent, autoindentで挿入されるインデント幅
set softtabstop=4   " Tabキーにより挿入するスペース数
set expandtab       " Tabキーによりスペースを挿入する
set smartindent

" Input Assistance -----------------------------------------------------------
set backspace=indent,eol,start   " バックスペースで特殊記号を削除可能にする
set clipboard=unnamed,autoselect " クリップボードを利用する
set virtualedit=block            " C-vの矩形選択で行末よりも後にカーソルを移動

" Appearance -----------------------------------------------------------------
set cursorline   " 現在行をハイライト
set cursorcolumn " 現在列をハイライト
"set number       " 行数表示
set title        " ウィンドウにタイトルを表示
set ruler        " カーソルの位置を行と列で表示する

" Search ---------------------------------------------------------------------
set incsearch   " インクリメンタルサーチ
set ignorecase  " 大文字小文字を区別しない
set smartcase   " 大文字で検索された場合 case sensitive にする

" Plug-in --------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'w0ng/vim-hybrid'
Plug 'Shougo/unite.vim'
call plug#end()

" unite.vim ------------------------------------------------------------------
let g:unite_enable_start_insert=1        " インサートモードで開始
let g:unite_source_history_yank_enable=1 " ヒストリー/ヤンク機能を有効化
nmap <Space> [unite]

"スペースキーとaキーでカレントディレクトリを表示
nnoremap <silent> [unite]a :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"スペースキーとbキーでバッファを表示
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>
"スペースキーとfキーでバッファと最近開いたファイル一覧を表示
nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer file_mru<CR>
"スペースキーとrキーでレジストリを表示
nnoremap <silent> [unite]r :<C-u>Unite<Space>register<CR>
"スペースキーとtキーでタブを表示
nnoremap <silent> [unite]t :<C-u>Unite<Space>tab<CR>
"スペースキーとスペースキーでfile
nnoremap <silent> [unite]<Space> :<C-u>Unite<Space>file<CR>
"スペースキーとENTERキーでfile_rec:!
nnoremap <silent> [unite]<CR> :<C-u>Unite<Space>file_rec:!<CR>
"unite.vimを開いている間のキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
    " ESCでuniteを終了
    nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction"}}}


"" バッファ一覧
"nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
"" ファイル一覧
"nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"" レジスタ一覧
"nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
"" 最近使用したファイル一覧
"nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
"" 常用セット
"nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
"" 全部乗せ
"nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
"
"nnoremap <space><space> :<C-u>Unite file<cr>
