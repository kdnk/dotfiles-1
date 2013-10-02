
"-------------------------------------------------------------------------------
" Plugin manager
"-------------------------------------------------------------------------------
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/dotfiles/neobundle.vim/
  call neobundle#rc(expand('~/dotfiles/vimfiles/bundle/'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
\ }

" unused bundles
NeoBundleCheck

" pathogen.vimによってbundle配下のpluginをpathに加える
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set helpfile=$VIMRUNTIME/doc/help.txt
filetype plugin on


"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------
NeoBundle 'kana/vim-operator-user'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'davidoc/taskpaper.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'surround.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'mattn/multi-vim'
NeoBundle 'Align'
NeoBundle 'gitv'
NeoBundle 'mattn/emmet-vim'
NeoBundleLazy 'Shougo/neocomplcache.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'othree/eregex.vim'
NeoBundle 'tyru/operator-html-escape.vim'
NeoBundle 'tyru/operator-camelize.vim'
NeoBundle 'tek/vim-operator-assign'
NeoBundle 'rhysd/vim-operator-evalruby'
NeoBundle 'pekepeke/vim-operator-tabular'
NeoBundle 'emonkak/vim-operator-sort'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'qtmplsel.vim'
NeoBundle 'glidenote/memolist.vim'
NeoBundle 'rking/ag.vim'
"NeoBundle 'thinca/vim-quickrun.git'
NeoBundle 'tmhedberg/matchit.git'
NeoBundleLazy 'alpaca-tc/vim-endwise.git', {
  \ 'autoload': {
  \   'insert': 1,
  \ }
\ }
"NeoBundle 'project.vim'
"NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'thinca/vim-qfreplace'
"NeoBundle 'm2ym/rsense'
NeoBundle 'Shougo/vinarise.vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'kshenoy/vim-signature'

NeoBundleCheck


"-------------------------------------------------------------------------------
" Basics
"-------------------------------------------------------------------------------
" Vi 互換なし
set nocompatible

" C-s とかのキーバインディングを有効にする
silent !stty -ixon > /dev/null 2>/dev/null
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" キーマップリーダー
let mapleader = ","

" 全角記号の幅
set ambiwidth=double

" スクロール時の余白確保
set scrolloff=5

" 一行に長い文章を書いていても自動折り返しをしない
set textwidth=0

" バックアップ取らない
set nobackup

" 他で書き換えられたら自動で読み直す
set autoread

" スワップファイル作らない
set noswapfile

" 編集中でも他のファイルを開けるようにする
set hidden

" バックスペースでなんでも消せるように
set backspace=indent,eol,start

" テキスト整形オプション，マルチバイト系を追加
set formatoptions=lmoq

" ビープをならさない
set vb t_vb=

" Explore の初期ディレクトリ
set browsedir=buffer

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" コマンドをステータス行に表示
set showcmd

" 現在のモードを表示
set showmode

" viminfoファイルの設定
set viminfo='50,<1000,s100,\"50

" モードラインは無効
set modelines=0

" コマンド補完を強化
set wildmenu

" コマンド補完を開始するキー
"set wildchar=

" リスト表示，最長マッチ
set wildmode=list:full

" コマンド・検索パターンの履歴数
set history=1000

" 補完に辞書ファイル追加
set complete+=k

" ヤンクした文字は、システムのクリップボードに入れる
set clipboard=unnamed

" Ev/Rvでvimrcの編集と反映
"command! Ev edit $MYVIMRC
"command! Rv source $MYVIMRC

" C-c と Esc の挙動を同じに
inoremap <C-c> <Esc>

" Undo/Redo
nnoremap U :redo<CR>
inoremap <c-u> <esc>ui
inoremap <c-s-u> <esc>Ui

" タブページ
map T :tabnew<cr>


"-------------------------------------------------------------------------------
" Apperance
"-------------------------------------------------------------------------------
" Color scheme
set background=dark
let g:solarized_visibility="low"
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_bold=0
colorscheme solarized

" シンタックスハイライト
syntax enable

" 常にステータスラインを表示
set laststatus=2

" 常にタブバーを表示
set showtabline=2

" 括弧の対応をハイライト
set showmatch

" 行番号表示
set number
hi LineNr ctermbg=none guibg=none ctermfg=235 guifg=black

" カーソル行をハイライト
set cursorline
hi CursorLine ctermbg=234 guibg=brblack
hi SignColumn ctermbg=none guibg=none

" Visual モードのカラーリング
hi Visual guifg=brcyan guibg=black ctermfg=245 ctermbg=235

" 不可視文字の表示
set list
"set listchars=tab:┊\ ,trail:_,eol:$
set listchars=tab:▸\ ,trail:˽
hi SpecialKey ctermfg=235 guifg=black

" 印字不可能文字を16進数で表示
set display=uhex

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

" カレントウィンドウにのみ罫線を引く
augroup cch
autocmd! cch
autocmd WinLeave * set nocursorline
autocmd WinEnter,BufRead * set cursorline
augroup END

" コマンド実行中は再描画しない
set lazyredraw

" 高速ターミナル接続を行う
set ttyfast



"-------------------------------------------------------------------------------
" Tags
"-------------------------------------------------------------------------------
" set tags

if has("autochdir")
  " 編集しているファイルのディレクトリに自動で移動
  set autochdir
  set tags=tags;
else
  set tags=./tags,./../tags,./*/tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags
endif

"「進む」
nnoremap tn :tn

"「戻る」
nnoremap tp :tp

"履歴一覧
nnoremap tl :tags


"-------------------------------------------------------------------------------
" Search
"-------------------------------------------------------------------------------
" 最後まで検索したら先頭へ戻る
set wrapscan

" 大文字小文字無視
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" インクリメンタルサーチ
set incsearch

" 検索文字をハイライト
set hlsearch

" Escの2回押しでハイライト消去
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" 選択した文字列を検索
vnoremap // y/=escape(@", '\\/.*$^~')

" 選択した文字列を置換
vnoremap /r "xy;%s/=escape(@x, '\\/.*$^~')//gc

" s*置換後文字列/gでカーソル下のキーワードを置換
nnoremap s* ':%substitute/\<' . expand('') . '\>/'

" 検索語が真ん中に来るようにする
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz


"-------------------------------------------------------------------------------
" Encoding
"-------------------------------------------------------------------------------
set encoding=utf-8
set fileencodings=ucs_bom,utf8,ucs-2le,ucs-2
set fileformats=unix,dos,mac

" 文字コードの自動認識
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconvがeucJP-msに対応しているかをチェック
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconvがJISX0213に対応しているかをチェック
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodingsを構築
  if &encoding ==# 'utf-8'
    let s:fileencodings_default = &fileencodings
    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
    let &fileencodings = s:fileencodings_default .','. &fileencodings
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
      set fileencodings+=cp932
      set fileencodings-=euc-jp
      set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif
  " 定数を処分
  unlet s:enc_euc
  unlet s:enc_jis
endif

" 日本語を含まない場合は fileencoding に encoding を使うようにする
function! AU_ReCheck_FENC()
  if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
    let &fileencoding=&encoding
  endif
endfunction

autocmd BufReadPost * call AU_ReCheck_FENC()

" 改行コードの自動認識
set fileformats=unix,dos,mac

" cvsの時は文字コードをeuc-jpに設定
autocmd FileType cvs :set fileencoding=euc-jp

" 以下のファイルの時は文字コードをutf-8に設定
autocmd FileType svn :set fileencoding=utf-8
autocmd FileType js :set fileencoding=utf-8
autocmd FileType css :set fileencoding=utf-8
autocmd FileType html :set fileencoding=utf-8
autocmd FileType xml :set fileencoding=utf-8
autocmd FileType java :set fileencoding=utf-8
autocmd FileType scala :set fileencoding=utf-8

" ワイルドカードで表示するときに優先度を低くする拡張子
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" 指定文字コードで強制的にファイルを開く
command! Cp932 edit ++enc=cp932
command! Eucjp edit ++enc=euc-jp
command! Iso2022jp edit ++enc=iso-2022-jp
command! Utf8 edit ++enc=utf-8
command! Jis Iso2022jp
command! Sjis Cp932



"-------------------------------------------------------------------------------
" Editing
"-------------------------------------------------------------------------------
" 自動でインデント
set autoindent
set smartindent
set cindent
set smarttab

" softtabstop は Tab キー押し下げ時の挿入される空白の量
" 0 の場合は tabstop と同じ
set tabstop=2 shiftwidth=2 softtabstop=0

" ファイルタイプの検索を有効にする
filetype plugin on

" そのファイルタイプにあわせたインデントを利用する
filetype indent on

" insertモードを抜けるとIMEオフ
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
inoremap :set iminsert=0

" yeでそのカーソル位置にある単語をレジスタに追加
nmap ye ;let @"=expand("")

" Visualモードでのpで選択範囲をレジスタの内容に置き換える
vnoremap p ;let current_reg = @"gvdi=current_reg

" :Ptでインデントモード切替
command! Pt :set paste!

" Emacs のカーソル移動
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-j> <CR>
inoremap <C-d> <Del>
inoremap <expr> <C-k> "\<C-g>u".(col('.') == col('$') ? '<C-o>gJ' : '<C-o>D')
cnoremap <C-k> <C-\>e getcmdpos() == 1 ? '' : getcmdline()[:getcmdpos()-2]<CR>

cmap <C-a> <Home>
cmap <C-b> <Left>
cmap <C-f> <Right>
cmap <C-d> <Del>
map <C-j> <CR>
map <C-n> <Down>
map <C-p> <Up>
inoremap <silent> <C-h> <C-g>u<C-h>

" ヤンク
inoremap <silent> <C-y>e <Esc>ly0<Insert>
inoremap <silent> <C-y>0 <Esc>ly$<Insert>

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge

" 日時の自動入力
inoremap ,df strftime('%Y/%m/%d %H:%M:%S')
inoremap ,dd strftime('%Y/%m/%d')
inoremap ,dt strftime('%H:%M:%S')


"-------------------------------------------------------------------------------
" Filetype
"-------------------------------------------------------------------------------
au BufNewFile,BufRead *.psgi       set filetype=perl
au BufNewFile,BufRead *.t          set filetype=perl
au BufNewFile,BufRead *.ejs        set filetype=html
au BufNewFile,BufRead *.ep         set filetype=html
au BufNewFile,BufRead *.pde        set filetype=processing
au BufNewFile,BufRead *.erb        set filetype=html
au BufNewFile,BufRead *.tt         set filetype=html
au BufNewFile,BufRead *.tt2        set filetype=html
au BufNewFile,BufRead *.scss       set filetype=scss
au BufNewFile,BufRead Guardfile    set filetype=ruby
au BufNewFile,BufRead cpanfile     set filetype=perl
au BufRead, BufNewFile jquery.*.js set ft=javascript syntax=jquery

autocmd FileType apache     setlocal sw=4 ts=4 sts=0 et
autocmd FileType c          setlocal sw=4 ts=4 sts=0 et
autocmd FileType cs         setlocal sw=4 ts=4 sts=0 et
autocmd FileType css        setlocal sw=2 ts=2 sts=0 et
autocmd FileType diff       setlocal sw=4 ts=4 sts=0 et
autocmd FileType eruby      setlocal sw=4 ts=4 sts=0 et
autocmd FileType html       setlocal sw=2 ts=2 sts=0 et
autocmd FileType java       setlocal sw=4 ts=4 sts=0 et
autocmd FileType javascript setlocal sw=2 ts=2 sts=0 et
autocmd FileType coffee     setlocal sw=2 ts=2 sts=0 et
autocmd FileType perl       setlocal sw=4 ts=4 sts=0 et
autocmd FileType php        setlocal sw=4 ts=4 sts=0 et
autocmd FileType python     setlocal sw=4 ts=4 sts=0 et
autocmd FileType ruby       setlocal sw=2 ts=2 sts=0 et
autocmd FileType haml       setlocal sw=2 ts=2 sts=0 et
autocmd FileType sh         setlocal sw=4 ts=4 sts=0 et
autocmd FileType sql        setlocal sw=4 ts=4 sts=0 et
autocmd FileType vim        setlocal sw=2 ts=2 sts=0 et
autocmd FileType xhtml      setlocal sw=2 ts=2 sts=0 et
autocmd FileType xml        setlocal sw=4 ts=4 sts=0 et
autocmd FileType yaml       setlocal sw=2 ts=2 sts=0 et
autocmd FileType scala      setlocal sw=2 ts=2 sts=0 et
autocmd FileType scheme     setlocal sw=2 ts=2 sts=0 et




"-------------------------------------------------------------------------------
" Plugin: Emmet
"-------------------------------------------------------------------------------
let g:user_emmet_expandabbr_key = '<c-m>'

let g:user_emmet_settings = {
  \ 'lang' : 'ja'
\ }


"-------------------------------------------------------------------------------
" Plugin: tComment
"-------------------------------------------------------------------------------
let g:tcommentMapLeader1 = '<C-/>'
let g:tcommentMapLeader2 = '<Leader>'
let g:tcommentMapLeaderOp1 = 'gc'
let g:tcommentMapLeaderOp2 = 'gC'


"-------------------------------------------------------------------------------
" Plugin: Session
"-------------------------------------------------------------------------------
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_default_to_last = 1

"-------------------------------------------------------------------------------
" Plugin: NERD Tree
"-------------------------------------------------------------------------------
let NERDSpaceDelims = 1
let NERDShutUp = 1

map <C-s> :NERDTreeToggle<CR>


"-------------------------------------------------------------------------------
" Plugin: Multi Cursor
"-------------------------------------------------------------------------------
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key = '<c-r>'
let g:multi_cursor_prev_key = '<c-s-r>'
let g:multi_cursor_skip_key = '<D-k>' "until we got multiple keys support
let g:multi_cursor_quit_key = '<Esc>'


"-------------------------------------------------------------------------------
" Plugin: Indent guides
"-------------------------------------------------------------------------------
" let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=indent_guide ctermbg=indent_guide
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=indent_guide ctermbg=indent_guide

let g:indentLine_char = '┊'



"-------------------------------------------------------------------------------
" Plugin: Ag
"-------------------------------------------------------------------------------
nnoremap gg/  :<C-u>Ag <C-R><C-w><CR>
vnoremap gg/ y:<C-u>Ag <C-R>"<CR>


"-------------------------------------------------------------------------------
" Plugin: Memo List
"-------------------------------------------------------------------------------
let g:memolist_memo_suffix = 'md'
let g:memolist_path = '~/Dropbox/memo'

nnoremap ,mn :MemoNew<cr>
nnoremap ,mg :MemoGrep<cr>
nnoremap ,ml :MemoList<CR>
nnoremap ,mf :exe "CtrlP" g:memolist_path<cr><f5>


"-------------------------------------------------------------------------------
" Plugin: Align
"-------------------------------------------------------------------------------
xnoremap <silent> a: :Alignta  01 :<CR>
xnoremap al :Alignta<Space>


"-------------------------------------------------------------------------------
" Plugin: CtrlP
"-------------------------------------------------------------------------------
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_map = '<c-q>'
let g:ctrlp_by_filename = 0
let g:ctrlp_max_height = 10
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_mruf_max = 250

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|build|sass-cache)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }

let g:ctrlp_buftag_types = {
\ 'go'         : '--language-force=go --golang-types=ftv',
\ 'coffee'     : '--language-force=coffee --coffee-types=cmfvf',
\ 'markdown'   : '--language-force=markdown --markdown-types=hik',
\ 'objc'       : '--language-force=objc --objc-types=mpci',
\ 'rc'         : '--language-force=rust --rust-types=fTm'
\ }


"-------------------------------------------------------------------------------
" Plugin: Lightline
"-------------------------------------------------------------------------------
let g:lightline = {
  \ 'mode_map': { 'c': 'NORMAL' },
  \ 'active': {
  \   'left': [['mode', 'paste'], ['fugitive','filename'], ['ctrlpmark']],
  \   'right': [['syntastic', 'lineinfo', 'percent'], ['filetype'], ['fileencoding']]
  \ },
  \ 'component_function': {
  \   'modified': 'MyModified',
  \   'readonly': 'MyReadonly',
  \   'fugitive': 'MyFugitive',
  \   'filename': 'MyFilename',
  \   'fileformat': 'MyFileformat',
  \   'filetype': 'MyFiletype',
  \   'fileencoding': 'MyFileencoding',
  \   'mode': 'MyMode',
  \   'ctrlpmark': 'CtrlPMark',
  \ },
  \ 'component_expand': {
  \   'syntastic': 'SyntasticStatuslineFlag',
  \ },
  \ 'component_type': {
  \   'syntastic': 'error',
  \ },
  \ '_separator': { 'left': "\u2b80", 'right': "\u2b82" },
  \ '_subseparator': { 'left': "\u2b81", 'right': "\u2b83" },
  \ 'subseparator': { 'left': "│", 'right': "│" },
\ }

function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  "let icon = "\u2b64"
  let icon = "!!"
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? icon : ''
endfunction


function! MyFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      "let icon = "\u2b60 "
      let icon = "~ "
      let _ = fugitive#head()
      return strlen(_) ? icon._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'plain') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
    \ fname == 'ControlP' ? 'CtrlP' :
    \ fname == '__Gundo__' ? 'Gundo' :
    \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
    \ fname =~ 'NERD_tree' ? 'NERDTree' :
    \ &ft == 'unite' ? 'Unite' :
    \ &ft == 'vimfiler' ? 'VimFiler' :
    \ &ft == 'vimshell' ? 'VimShell' :
    \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

let g:lightline.ctrlp_regex = ''
let g:lightline.ctrlp_prev = ''
let g:lightline.ctrlp_item = ''
let g:lightline.ctrlp_next = ''

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP'
    call lightline#link('iR'[g:lightline.ctrlp_regex])
    return ''
  else
    return ''
  endif
endfunction

augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost *.c,*.cpp call s:syntastic()
augroup END
function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction
