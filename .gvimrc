" Theme ----------------------------------------------------------------------
set background=dark
colorscheme hybrid

" Font -----------------------------------------------------------------------
if has('win32')
    set guifont=Consolas:h10
    set rop=type:directx  "フォントレンダリングにDirectWriteを使用
elseif has('mac')
endif

" GUI ------------------------------------------------------------------------
"set guioptions-=m         " メニューバーを非表示にする
set guioptions-=T         " ツールバーを非表示にする
set guioptions-=r         " 右スクロールバーを非表示にする
set guioptions-=R         " 垂直分割時の右スクロールバーを非表示にする
set guioptions-=l         " 左スクロールバーを非表示にする
set guioptions-=L         " 垂直分割時の左スクロールバーを非表示にする
set guioptions-=b         " 水平スクロールバーを非表示にする
set guicursor=a:blinkon0  " カーソルを点滅させない
set mouse=a               " どのモードでもマウスを利用可能に設定

autocmd GUIEnter * set transparency=240

