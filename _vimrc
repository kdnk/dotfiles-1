"
"      V         V  I I I   M         M   R R R R R     C C C C
"       V       V     I     M M     M M   R        R   C       C
"        V     V      I     M  M   M  M   R       R   C
"         V   V       I     M   M M   M   R R R R     C
"          V V        I     M    M    M   R       R    C       C
"           V       I I I   M         M   R        R    C C C C
"
" @author creasty <yuki@creasty.com>
" @url https://github.com/creasty/dotfiles
"

"=== Plugins
"==============================================================================================
if has('vim_starting')
  set runtimepath+=~/dotfiles/_vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/dotfiles/_vim/bundle/'))
endif

" package manager
NeoBundleFetch 'Shougo/neobundle.vim'

" asynchronous execution plugin
NeoBundle 'Shougo/vimproc', {
  \ 'build': {
    \ 'windows': 'make -f make_mingw32.mak',
    \ 'cygwin': 'make -f make_cygwin.mak',
    \ 'mac': 'make -f make_mac.mak',
    \ 'unix': 'make -f make_unix.mak',
  \ },
\ }

"  Editing
"-----------------------------------------------
" define your own operator easily
NeoBundle 'kana/vim-operator-user'
" create your own text objects
NeoBundle 'kana/vim-textobj-user'
" text objects for indented blocks of lines
NeoBundle 'kana/vim-textobj-indent'
" adds text-objects for word-based columns
NeoBundle 'coderifous/textobj-word-column.vim'
" text objects for multiple types of parentheses
NeoBundle 'osyo-manga/vim-textobj-multiblock'
" deleting, changing, and adding surroundings
NeoBundle 'surround.vim'
" f/t motions to highlight all possible choices
NeoBundle 'Lokaltog/vim-easymotion'
" commenting code
NeoBundle 'scrooloose/nerdcommenter'
" syntax checking on the fly has never been so pimp
NeoBundleLazy 'scrooloose/syntastic', {
  \ 'autoload': { 'insert': 1 },
\ }
" a simple, easy-to-use Vim alignment plugin
NeoBundleLazy 'junegunn/vim-easy-align', {
  \ 'autoload': { 'commands': ['EasyAlign'] }
\ }
" emmet for vim: HTML and CSS hi-speed coding
NeoBundle 'mattn/emmet-vim', {
  \ 'autoload': {
    \ 'insert': 1,
    \ 'function_prefix': 'emmet',
  \ },
\ }
" operator to escape HTML entities
NeoBundle 'tyru/operator-html-escape.vim'
" operator to camelize/decamelize a specified text
NeoBundle 'tyru/operator-camelize.vim'
" operator to evaluate a text object using Ruby
NeoBundle 'rhysd/vim-operator-evalruby'
" operator to replace text with register content
NeoBundle 'kana/vim-operator-replace'
" extended % matching
NeoBundle 'tmhedberg/matchit'
" provide smart input assistant
NeoBundleLazy 'kana/vim-smartinput', {
  \ 'depends': ['smartchr'],
  \ 'autoload': { 'insert': 1 },
\ }
" insert several candidates with a single key
NeoBundleLazy 'smartchr', {
  \ 'autoload': { 'insert': 1 },
\ }
" refactoring tool for Ruby in vim
NeoBundleLazy 'ecomba/vim-ruby-refactoring',  {
  \ 'autoload': { 'filetypes': ['ruby'] }
\ }
" switch segments of text with predefined replacements
NeoBundle 'AndrewRadev/switch.vim'
" maniplate selected text easily
NeoBundle 't9md/vim-textmanip'
" automatically insert closing-pair and put the cursor between them
NeoBundle 'Townk/vim-autoclose'
" sequencial numbering with pattern
NeoBundle 'deris/vim-rengbang'
" incremental visual selection
NeoBundle 'terryma/vim-expand-region'
" pasting with indentation adjusted to paste destination
NeoBundle 'sickill/vim-pasta'
" use CTRL-A/CTRL-X to increment dates, times, and more
NeoBundle 'tpope/vim-speeddating'
" true Sublime Text multiple selection in Vim
NeoBundle 'terryma/vim-multiple-cursors'
" toggle ruby's postfix notations of if/unless/while/until
NeoBundleLazy 'Qureana/backend_if', {
  \ 'autoload': {
    \ 'filetypes': ['ruby'],
    \ 'commands': ['ToggleStatement'],
  \ },
\ }


"  Completion
"-----------------------------------------------
" next generation of auto completion framework
NeoBundleLazy 'Shougo/neocomplete', {
  \ 'autoload': { 'insert': 1 },
\ }
" accurately completing C and C++ code
NeoBundleLazy 'Rip-Rip/clang_complete', {
  \ 'autoload': {
    \ 'filetypes': ['clang', 'objc'],
  \ },
\ }
" adds snippet support
NeoBundleLazy 'Shougo/neosnippet', {
  \ 'depends': ['Shougo/neocomplete'],
  \ 'autoload': {
    \ 'commands': ['NeoSnippetEdit', 'NeoSnippetSource'],
    \ 'filetypes': 'snippet',
    \ 'insert': 1,
    \ 'unite_sources': ['snippet', 'neosnippet/user', 'neosnippet/runtime'],
  \ },
\ }
" insert #include<>
NeoBundle 'osyo-manga/vim-stargate'

"  Utils
"-----------------------------------------------
" make benchmark result of your vimrc
NeoBundleLazy 'mattn/benchvimrc-vim', {
  \ 'autoload': { 'commands': ['BenchVimrc'] },
\ }
" a Git wrapper so awesome
NeoBundle 'tpope/vim-fugitive'
" enable repeating supported plugin maps with dot
NeoBundle 'tpope/vim-repeat'
" a tree explorer
NeoBundle 'scrooloose/nerdtree'
" making NERDTree feel like a true panel, independent of tabs
NeoBundle 'jistr/vim-nerdtree-tabs'
" miscellaneous auto-load Vim scripts (dependency of vim-session)
NeoBundle 'xolox/vim-misc'
" extended session management
NeoBundle 'xolox/vim-session'
" unite and create user interfaces
NeoBundleLazy 'Shougo/unite.vim', {
  \ 'autoload': { 'commands': ['Unite'] },
\ }
" outline source for unite.vim
NeoBundleLazy 'h1mesuke/unite-outline', {
  \ 'depends': ['Shougo/unite.vim'],
  \ 'autoload': { 'unite_sources': ['outline'] },
\ }
" tags source for unite.vim
NeoBundleLazy 'tsukkee/unite-tag', {
  \ 'depends': ['Shougo/unite.vim'],
  \ 'autoload': { 'unite_sources': ['outline'] },
\ }
" powerful shell implemented by Vim script
NeoBundleLazy 'Shougo/vimshell.vim', {
  \ 'depends': ['Shougo/vimproc'],
  \ 'autoload': { 'commands': ['VimShell'] },
\ }
" open URI with browser
NeoBundle 'tyru/open-browser.vim'
" simple memo plugin
NeoBundle 'glidenote/memolist.vim', {
  \ 'autoload': { 'commands': ['MemoNew', 'MemoList', 'MemoGrep'] }
\ }
" hex editing system
NeoBundleLazy 'Shougo/vinarise.vim', {
  \ 'autoload': { 'commands': ['Vinarise', 'VinariseDump'] },
\ }
" pseudo clipboard register
NeoBundle 'kana/vim-fakeclip'
" switch to the missing file without interaction
NeoBundle 'kana/vim-altr'
" run commands quickly
NeoBundle 'thinca/vim-quickrun'
" create your own submodes
NeoBundle 'kana/vim-submode'
" substitute preview
NeoBundle 'osyo-manga/vim-over'
" functional Object Oriented VimL (dependency of dash.vim)
NeoBundleLazy 'rizzatti/funcoo.vim'
" launch queries for Dash.app
NeoBundleLazy 'rizzatti/dash.vim', {
  \ 'depends': ['rizzatti/funcoo.vim'],
  \ 'autoload': { 'commands': ['Dash'] },
\ }
" context filetype library
NeoBundle 'Shougo/context_filetype.vim'
" switch filetype by context around cursor
NeoBundle 'osyo-manga/vim-precious'
" lookup Codic
NeoBundleLazy 'koron/codic-vim', {
  \ 'autoload': { 'commands': ['Codic'] },
\ }
" unite.vim source for codic-vim
NeoBundleLazy 'rhysd/unite-codic.vim', {
  \ 'depends': ['Shougo/unite.vim', 'koron/codic-vim'],
  \ 'autoload': { 'unite_sources': ['codic'] },
\ }
" github issue lookup
NeoBundleLazy 'jaxbot/github-issues.vim', {
  \ 'autoload': { 'commands': ['Gissues'] },
\ }
" automatically save changes to disk
NeoBundle 'vim-auto-save'
" perform the replacement in quickfix
NeoBundleLazy 'thinca/vim-qfreplace', {
  \ 'autoload': { 'commands': ['Qfreplace'] },
\ }
" command for the_silver_searcher
NeoBundleLazy 'rking/ag.vim', {
  \ 'autoload': { 'commands': ['Ag'] },
\ }
" w3m plugin
NeoBundleLazy 'yuratomo/w3m.vim', {
  \ 'autoload': { 'commands': ['W3m'] },
\ }
" list and lookup http status code
NeoBundleLazy 'mattn/httpstatus-vim', {
  \ 'autoload': { 'commands': ['HttpStatus'] },
\ }
" display tags of a file ordered by scope
NeoBundle 'majutsushi/tagbar'

"  Appearance
"-----------------------------------------------
" a light and configurable statusline/tabline
NeoBundle 'itchyny/lightline.vim'
" visually displaying indent levels
NeoBundle 'nathanaelkane/vim-indent-guides'
" toggle, display and navigate marks
NeoBundle 'kshenoy/vim-signature'
" search status
NeoBundle 'osyo-manga/vim-anzu'

"  Language
"-----------------------------------------------
" syntax highlight for Haml
NeoBundleLazy 'tpope/vim-haml', {
  \ 'autoload': { 'filetypes': ['haml'] }
\ }
" syntax highlight for Markdown
NeoBundleLazy 'tpope/vim-markdown', {
  \ 'autoload': { 'filetypes': ['markdown'] }
\ }
" syntax highlight for CoffeeScript
NeoBundleLazy 'kchmck/vim-coffee-script', {
  \ 'autoload': { 'filetypes': ['coffee'] }
\ }
" working with Ruby on Rails applications
NeoBundleLazy 'tpope/vim-rails', {
  \ 'autoload': { 'filetypes': ['ruby'] }
\ }
" syntax highlight for Ruby
NeoBundleLazy 'vim-ruby/vim-ruby', {
  \ 'autoload': { 'filetypes': ['ruby'] }
\ }
" highlight Ruby local variables
NeoBundleLazy 'todesking/ruby_hl_lvar.vim', {
  \ 'autoload': { 'filetypes': ['ruby'] }
\ }
" syntax highlight for Cucumber
NeoBundleLazy 'tpope/vim-cucumber', {
  \ 'autoload': { 'filetypes': ['cucumber.ruby'] }
\ }
" syntax highlight for Slim
NeoBundleLazy 'slim-template/vim-slim', {
  \ 'autoload': { 'filetypes': ['slim'] }
\ }
" syntax highlight for SCSS
NeoBundleLazy 'cakebaker/scss-syntax.vim', {
  \ 'autoload': { 'filetypes': ['scss'] }
\ }
" plugin for Cocoa/Objective-C development
NeoBundleLazy 'msanders/cocoa.vim', {
  \ 'autoload': { 'filetypes': ['objc'] }
\ }
" plugin for iOS development
NeoBundleLazy 'eraserhd/vim-ios', {
  \ 'autoload': { 'filetypes': ['objc'] }
\ }
" syntax highlight for Scala
NeoBundleLazy 'yuroyoro/vim-scala', {
  \ 'autoload': { 'filetypes': ['scala'] }
\ }
" syntax highlight for Clojure
NeoBundleLazy 'jondistad/vimclojure', {
  \ 'autoload': { 'filetypes': ['clojure'] }
\ }
" syntax highlight for Haskell
NeoBundleLazy 'kana/vim-filetype-haskell', {
  \ 'autoload': { 'filetypes': ['haskell'] }
\ }
" go development plugin
NeoBundleLazy 'fatih/vim-go', {
  \ 'autoload': { 'filetypes': ['go'] }
\ }


filetype plugin indent on

NeoBundleCheck


"=== Encoding
"==============================================================================================
set encoding=utf-8
set fileencodings=ucs_bom,utf8,ucs-2le,ucs-2
set fileformats=unix,dos,mac

" auto detection
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'

  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif

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

  unlet s:enc_euc
  unlet s:enc_jis
endif

" force &fileencoding to use &encoding
" when files not contain japanese charactors
augroup AutoDetectEncording
  autocmd! BufReadPost *
    \ if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0 |
      \ let &fileencoding = &encoding |
    \ endif
augroup END


"=== Warhead
"==============================================================================================
"  Unregister autocmds
"-----------------------------------------------
augroup vimrc
  autocmd!
augroup END


"  Variables
"-----------------------------------------------
let g:dotfiles_path = $HOME . '/dotfiles'
let g:hostname = substitute(hostname(), '[^\w.]', '', '')


"  Local vimrc (computer depends)
"-----------------------------------------------
autocmd vimrc User VimrcLoadPre call <SID>load_local_vimrc('pre')
autocmd vimrc User VimrcLoadPost call <SID>load_local_vimrc('post')

function! s:load_local_vimrc(hook)
  let file = g:dotfiles_path . '/_vim/locals/' . g:hostname . '.' . a:hook

  if filereadable(file)
    execute 'source ' . file
  endif
endfunction

doautocmd User VimrcLoadPre


"=== Basics
"==============================================================================================
" make special key bindings like <C-s> work
if !has('gui_running')
  silent !stty -ixon > /dev/null 2>&1
endif

" use comma as leader
let mapleader = ','

" split to right
set splitright

" use double width to print non-ascii charactors
set ambiwidth=double

" line offset when scrolling
set scrolloff=5

" no auto line breaking
set textwidth=0

" no backup and swap files
set nobackup
set noswapfile

" reload when files modified outside of vim
set autoread

" delete over lines and indents
set backspace=indent,eol,start

" add multibyte option
set formatoptions& formatoptions+=lmoq

" no beeps
set vb t_vb=

" initial dir of explorer
set browsedir=buffer

" move cursor over lines
set whichwrap=b,s,h,l,<,>,[,]

" display commands in statusline
set showcmd

" unnecessary, use lightline
set noshowmode

" config viminfo
" remember marks for last 50 files
" contents of register up to 100 lines each
" skip register with more than 100 kbytes
set viminfo='50,<1000,s100

" disable mode lines
set modelines=0

" command line completion
set wildmenu
set wildmode=list:full

" fast terminal connection
set ttyfast

" command history
set history=1000

" use dictionaries for completion
set complete& complete+=k

" yank use system clipboard
set clipboard=unnamed

" inc/decrement
set nf=alpha,hex

" disable IME
set imdisable

" nohidden buffers
set nohidden

" use Blowfish algorithm
set cryptmethod=blowfish

" wildcard settings
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set wildignore& wildignore+=*/tmp/*,*.so,*.swp,*.zip

" nice window title
set title titlestring=
set titlestring+=#%n " buffer number
set titlestring+=\ -\ %t%m%r%h%w " file name and flags
set titlestring+=\ (%{substitute(expand('%:p:h'),\ $HOME,\ '~',\ '')}) " path

" find file with suffixes
set suffixesadd& suffixesadd+=.js,.coffee,.swift,.scss


"=== Apperance
"==============================================================================================
" syntax highlight & color scheme
set background=dark
set t_Co=256
syntax enable
colorscheme CreastyCode

" always show statusline
set laststatus=2

" always show tabline
set showtabline=2

" match pairs
set showmatch

" show line numbers
set number

" highlighting current line will slow down vim
set nocursorline

" do not redraw during command
set lazyredraw

" limit syntax highlighting
set synmaxcol=512

" display very very long line at the end of file
set display& display+=lastline

" display nonprintable charactors as hex
set display+=uhex

" show hidden charactors
set list
set listchars=tab:▸\ ,nbsp:∘,extends:❯,precedes:❮

" show wrap line break
set showbreak=❮


"  Folding
"-----------------------------------------------
set foldmethod=indent
set fillchars="fold:"
set foldlevel=20
set foldlevelstart=20
set foldtext=CustomFoldText()

function! CustomFoldText()
  let fs = v:foldstart

  while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
  endwhile

  if fs > v:foldend
    let line = getline(v:foldstart)
  else
    let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
  endif

  let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)

  let lineCounter = ' (' . (1 + v:foldend - v:foldstart) . ')'
  let expansion = repeat(' ', w - strwidth(lineCounter . line))

  return line . expansion . lineCounter
endfunction


"  Custom highlight
"-----------------------------------------------
" highlight full-width space
call CreastyCode('ZenkakuSpace', '', 'dark_red', '')
autocmd vimrc BufWinEnter,WinEnter *
  \ call matchadd('ZenkakuSpace', '　')

" highlight trailing spaces
call CreastyCode('TrailingSpace', '', 'line', '')
autocmd vimrc BufWinEnter,WinEnter *
  \ call matchadd('TrailingSpace', '\s\+$')


"=== Search
"==============================================================================================
" cricle search within files
set wrapscan

" ignore case only if contains upper case
set ignorecase
set smartcase

" incremental search
set incsearch

" match highlight
set hlsearch

" dim match highlight
nnoremap <silent> // :nohlsearch<CR><Esc>

" erase previous match highlight
autocmd vimrc BufReadPost * :nohlsearch

" search selection
vnoremap // /<C-r>=escape(@", '\\/.*$^~')<CR>

" replace selection
vnoremap /r "xy:%s/<C-r>=escape(@x, '\\/.*$^~')<CR>/

" replace word under cursor
nnoremap <expr> s* ':%s/\<' . expand('<cword>') . '\>/'

" auto escaping
cnoremap <expr> /  getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ?  getcmdtype() == '?' ? '\?' : '?'

" ag
if executable('ag')
  set grepprg=ag\ --nogroup\ -iS
  set grepformat=%f:%l:%m
endif


"=== Editing
"==============================================================================================
" indent
set noautoindent
set smartindent
set cindent
set smarttab
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=0
set shiftround

" virtualedit with freedom
set virtualedit& virtualedit+=block

" don't insert the current comment leader on leading lines
set formatoptions-=ro

" remove a comment leader when joining lines
if has('gui_running')
  set formatoptions+=j
endif

" edit and apply vimrc
command! EditVimrc edit $MYVIMRC

autocmd vimrc BufWritePost *vimrc
  \ source $MYVIMRC |
  \ if has('gui_running') |
    \ source $MYGVIMRC |
  \ endif |
  \ doautocmd User VimrcReloadPost

" toggle paste mode
command! Pt :set paste!

" move cursor visually with long lines
nmap j gj
vmap j gj
nmap k gk
vmap k gk

" Emacs-like key bindings
imap <C-j> <CR>
map <C-c> <Esc>
inoremap <C-n> <C-o>gj
inoremap <C-p> <C-o>gk
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <expr> <C-a> (col('.') == 2) ? "\<Left>" : "\<C-o>g0"
inoremap <C-e> <C-o>g$
inoremap <C-d> <Del>
" inoremap <C-h> <C-g>u<C-h>
inoremap <expr> <C-k> "\<C-g>u".(col('.') == col('$') ? '<C-o>gJ' : '<C-o>d$')

cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-d> <Del>
cnoremap <C-k> <C-\>e getcmdpos() == 1 ? '' : getcmdline()[:getcmdpos()-2]<CR>

" paste
inoremap <C-v> <C-r><C-p>*
cnoremap <C-v> <C-r>*

" auto wrap
vnoremap ( S(
vnoremap { S{
vnoremap [ S[
vnoremap " S"
vnoremap ' S'

" do not store to register with x, c
nnoremap x "_x
nnoremap X "_X
nnoremap c "_c
nnoremap C "_C

" undo
inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>

" why are you left out??
nnoremap Y y$

" keep the cursor in place while joining lines
nnoremap J mZJ`ZmZ

" split lines: inverse of J
nnoremap <silent> K ylpr<Enter>

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" use sane regexes
nnoremap / /\v
vnoremap / /\v

" easy key
nnoremap <Space>h ^
nnoremap <Space>l $
nnoremap <Space>m %

" insert blank lines without going into insert mode
nnoremap <Space>o mZo<Esc>`ZmZ
nnoremap <Space>O mZO<Esc>`ZmZ

" reselect pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" select all
map <Space>a ggVG

" repeat the last recorded macro
map Q @@

" avoid suicide
nnoremap ZQ <Nop>

" sort lines inside block
nnoremap <leader>sor ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>

" tags
nnoremap tn :tn<CR>
nnoremap tp :tp<CR>
nnoremap tl :tags<CR>

" tab pages / buffers
nmap <C-w><C-t> <C-w>t
nnoremap <C-w>t :tabnew<CR>

nmap <C-w><C-v> <C-w>v
nnoremap <C-w>v :vnew<CR>

" remove trailing spaces before saving
autocmd vimrc BufWritePre *
  \ if &ft != 'markdown' |
    \ :%s/\s\+$//ge |
  \ endif

" convert tabs to soft tabs if expandtab is set
autocmd vimrc BufWritePre *
  \ if &et |
    \ exec "%s/\t/  /ge" |
  \ endif

" back to the last line I edited
autocmd vimrc BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \ exe "normal! g`\"" |
  \ endif

" reset previous marks
autocmd vimrc BufReadPost * delmarks!

" numbering selection in visual-block mode
nnoremap <silent> sc :ContinuousNumber <C-a><CR>
vnoremap <silent> sc :ContinuousNumber <C-a><CR>
command! -count -nargs=1 ContinuousNumber
  \ let c = col('.') |
  \ for n in range(1, <count>?<count>-line('.'):1) |
    \ exec 'normal! j' . n . <q-args> |
    \ call cursor('.', c) |
  \ endfor

" use I, A for all visual modes
vnoremap <expr> I <SID>force_blockwise_visual('I')
vnoremap <expr> A <SID>force_blockwise_visual('A')

function! s:force_blockwise_visual(next_key)
  let m = mode()

  if m == 'v'
    return "\<C-v>" . a:next_key
  elseif m == 'V'
    return "\<C-v>0o$" . a:next_key
  else
    return a:next_key
  endif
endfunction


"=== Utils
"==============================================================================================
" reopen current buffer with specific encoding
command! -bang -nargs=? Utf8
  \ edit<bang> ++enc=utf-8 <args>
command! -bang -nargs=? Sjis
  \ edit<bang> ++enc=cp932 <args>
command! -bang -nargs=? Jis
  \ edit<bang> ++enc=iso-2022-jp <args>
command! -bang -nargs=? Euc
  \ edit<bang> ++enc=eucjp <args>

" clean up hidden buffers
command! CleanBuffers :call <SID>clean_buffers()

function! s:clean_buffers()
  redir => buffersoutput
    silent buffers
  redir END

  let buflist = split(buffersoutput, "\n")

  for item in buflist
    let t = matchlist(item, '\v^\s*(\d+)([^"]*)')
    if t[2][1] != '#' && t[2][2] != 'a' && t[2][4] != '+'
      exec 'bdelete ' . t[1]
    endif
  endfor
endfunction

" create directories if not exist
autocmd vimrc BufWritePre *
 \ call s:auto_mkdir(expand('<afile>:p:h'))

function! s:auto_mkdir(dir)
  if !isdirectory(a:dir)
    call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
  endif
endfunction

" delete current file
command! -nargs=0 Delete call delete(expand('%')) | enew!

" insert relative path
cnoremap <C-l> <C-r>=expand('%:h') . '/' <CR>

" edit relative :ee
cnoremap <expr> e
  \ (getcmdtype() . getcmdline() == ':e') ? " \<C-r>=expand('%:h') . '/' \<CR>" : 'e'

" home directory :eh
cnoremap <expr> h
  \ (getcmdtype() . getcmdline() == ':e') ? ' ~/' : 'h'

" rename :er
cnoremap <expr> r
  \ (getcmdtype() . getcmdline() == ':e') ? "\<C-u>Rename \<C-r>=expand('%:p') \<CR>" : 'r'

" w!! to write a file as sudo
cnoremap <expr> !
  \ (getcmdtype() . getcmdline() == ':w!') ? "\<C-u>w !sudo tee % >/dev/null" : '!'

command! -nargs=1 -complete=file Rename f <args> | w | call delete(expand('#'))

" file detect on read / save
autocmd vimrc BufWritePost,BufReadPost,BufEnter *
  \ if &l:filetype ==# '' || exists('b:ftdetect') |
    \ unlet! b:ftdetect |
    \ filetype detect |
  \ endif

" automatically change input source
if executable('osascript')
  let s:keycode_jis_eisuu = 102
  let g:force_alphanumeric_input_command =
    \ "osascript -e 'tell application \"System Events\" to key code " . s:keycode_jis_eisuu . "' &"

  autocmd vimrc FocusGained *
    \ call system(g:force_alphanumeric_input_command)
endif

" inspect syntax
command! ScopeInfo echo map(synstack(line('.'), col('.')), 'synIDattr(synIDtrans(v:val), "name")')


"=== Project root directory
"==============================================================================================
if exists('+autochdir')
  set noautochdir
endif

let g:current_root_directory = ''

let s:root_patterns = [
  \ '.git',
  \ '.git/',
  \ 'Rakefile',
  \ 'Gemfile',
  \ 'package.json',
  \ '.vimprojectroot',
  \ '*.xcodeproj'
\ ]

function! s:get_root_directory()
  let dir_current_file = fnameescape(expand('%:p:h'))

  for pattern in s:root_patterns
    if stridx(pattern, '/') != -1
      let match = finddir(pattern, dir_current_file . ';')

      if !empty(match)
        return fnamemodify(match, ':p:h:h')
      endif
    else
      let match = findfile(pattern, dir_current_file . ';')

      if !empty(match)
        return fnamemodify(match, ':p:h')
      endif
    endif
  endfor

  return ''
endfunction

function! s:can_change_directory()
  return match(expand('%:p'), '^\w\+://.*') == -1 && empty(&buftype)
endfunction

function! s:change_directory(dir)
  let edir = fnameescape(a:dir)

  exec 'setlocal path-=' . edir
  let g:current_root_directory = a:dir
  exec 'setlocal path+=' . edir

  exec 'cd ' . edir
endfunction

function! s:change_to_root_directory()
  if !s:can_change_directory()
    return
  endif

  let dir = s:get_root_directory()

  if empty(dir)
    " change directory for non project files
    " let dir = expand('%:p:h')
    return
  endif

  call s:change_directory(dir)
endfunction

autocmd vimrc BufRead,BufEnter,WinEnter,TabEnter *
  \ call <SID>change_to_root_directory()


"=== Image tags
"==============================================================================================
if executable('identify')
  let s:image_tag_template = {
    \ 'html': '<img src="%p" width="%w" height="%h" alt="">',
  \ }

  function! s:get_image_size(file)
    let result = system('identify -format "%w %h" "' . fnameescape(a:file) . '"')

    if v:shell_error == '0'
      return result
    else
      return ''
    endif
  endfunction

  " FIXME: not working
  function! s:insert_image_tag(file)
    let size = s:get_image_size(a:file)

    if empty(size)
      return
    endif

    let dim = split(size)

    echo dim
    echo &filetype

    if empty(&filetype)
      let template = s:image_tag_template['*']
    else
      let template = s:image_tag_template[&filetype]
    endif

    if !template
      return
    endif

    let template = substitute(template, '%p', a:file)
    let template = substitute(template, '%w', dim[0])
    let template = substitute(template, '%h', dim[1])

    normal! 'i' . template . "\<ESC>"
  endfunction

  command! -nargs=1 -complete=file ImageTagInsert call <SID>insert_image_tag(<f-args>)
endif


"=== Next/last text-object
"==============================================================================================
" dins  -- delete in next single quotes
"   foo = bar('spam')
"   C
"   foo = bar('')
"             C
" canp  -- change around next parens
"   foo = bar('spam')
"   C
"   foo = bar
"            C
" vind  -- select inside next double quotes
"   print "hello ", name
"    C
"   print "hello ", name
"          VVVVVV

onoremap <silent> an :<C-u>call <SID>NextTextObject('a', '/')<CR>
xnoremap <silent> an :<C-u>call <SID>NextTextObject('a', '/')<CR>
onoremap <silent> in :<C-u>call <SID>NextTextObject('i', '/')<CR>
xnoremap <silent> in :<C-u>call <SID>NextTextObject('i', '/')<CR>

onoremap <silent> al :<C-u>call <SID>NextTextObject('a', '?')<CR>
xnoremap <silent> al :<C-u>call <SID>NextTextObject('a', '?')<CR>
onoremap <silent> il :<C-u>call <SID>NextTextObject('i', '?')<CR>
xnoremap <silent> il :<C-u>call <SID>NextTextObject('i', '?')<CR>

function! s:NextTextObject(motion, dir)
  let c = nr2char(getchar())
  let d = ''

  if c ==# "p" || c ==# "(" || c ==# ")"
    let c = "("
  elseif c ==# "b" || c ==# "{" || c ==# "}"
    let c = "{"
  elseif c ==# "r" || c ==# "[" || c ==# "]"
    let c = "["
  elseif c ==# 's' || c ==# "'"
    let c = "'"
  elseif c ==# 'd' || c ==# '"'
    let c = '"'
  else
    return
  endif

  " Find the next opening-whatever.
  execute "normal! " . a:dir . c . "\<cr>"

  if a:motion ==# 'a'
    " If we're doing an 'around' method, we just need to select around it
    " and we can bail out to Vim.
    execute "normal! va" . c
  else
    " Otherwise we're looking at an 'inside' motion.  Unfortunately these
    " get tricky when you're dealing with an empty set of delimiters because
    " Vim does the wrong thing when you say vi(.

    let open = ''
    let close = ''

    if c ==# "("
      let open = "("
      let close = ")"
    elseif c ==# "{"
      let open = "{"
      let close = "}"
    elseif c ==# "["
      let open = "\\["
      let close = "\\]"
    elseif c ==# "'"
      let open = "'"
      let close = "'"
    elseif c ==# '"'
      let open = '"'
      let close = '"'
    endif

    " We'll start at the current delimiter.
    let start_pos = getpos('.')
    let start_l = start_pos[1]
    let start_c = start_pos[2]

    " Then we'll find it's matching end delimiter.
    if c ==# "'" || c ==# '"'
      " searchpairpos() doesn't work for quotes, because fuck me.
      let end_pos = searchpos(open)
    else
      let end_pos = searchpairpos(open, '', close)
    endif

    let end_l = end_pos[0]
    let end_c = end_pos[1]

    call setpos('.', start_pos)

    if start_l == end_l && start_c == (end_c - 1)
      " We're in an empty set of delimiters.  We'll append an "x"
      " character and select that so most Vim commands will do something
      " sane.  v is gonna be weird, and so is y.  Oh well.
      execute "normal! ax\<esc>\<left>"
      execute "normal! vi" . c
    elseif start_l == end_l && start_c == (end_c - 2)
      " We're on a set of delimiters that contain a single, non-newline
      " character.  We can just select that and we're done.
      execute "normal! vi" . c
    else
      " Otherwise these delimiters contain something.  But we're still not
      " sure Vim's gonna work, because if they contain nothing but
      " newlines Vim still does the wrong thing.  So we'll manually select
      " the guts ourselves.
      let whichwrap = &whichwrap
      set whichwrap+=h,l

      execute "normal! va" . c . "hol"

      let &whichwrap = whichwrap
    endif
  endif
endfunction


"=== Number text-object
"==============================================================================================
" margin-top: 200px; -> dam -> margin-top: px;
" ^                                       ^
" TODO: Handle floats.

onoremap <silent> m  :<C-u>call <SID>NumberTextObject(0)<CR>
xnoremap <silent> m  :<C-u>call <SID>NumberTextObject(0)<CR>
onoremap <silent> am :<C-u>call <SID>NumberTextObject(1)<CR>
xnoremap <silent> am :<C-u>call <SID>NumberTextObject(1)<CR>
onoremap <silent> im :<C-u>call <SID>NumberTextObject(1)<CR>
xnoremap <silent> im :<C-u>call <SID>NumberTextObject(1)<CR>

function! s:NumberTextObject(whole)
  let num = '\v[0-9]'

  " If the current char isn't a number, walk forward.
  while getline('.')[col('.') - 1] !~# num
    normal! l
  endwhile

  " Now that we're on a number, start selecting it.
  normal! v

  " If the char after the cursor is a number, select it.
  while getline('.')[col('.')] =~# num
    normal! l
  endwhile

  " If we want an entire word, flip the select point and walk.
  if a:whole
    normal! o

    while col('.') > 1 && getline('.')[col('.') - 2] =~# num
      normal! h
    endwhile
  endif
endfunction


"=== Plugin: NeoComplete
"==============================================================================================
let s:bundle = neobundle#get('neocomplete')
function! s:bundle.hooks.on_source(bundle)
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_smart_case = 1
  let g:neocomplcache_max_list = 20
  let g:neocomplete#sources#syntax#min_keyword_length = 3
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
  let g:neocomplete#disable_auto_complete = 0
  let g:neocomplete#enable_auto_select = 1
  let g:neocomplete#enable_insert_char_pre = 1
  set completeopt& completeopt-=preview

  let dictdir = g:dotfiles_path . '/dict'
  let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default':    '',
    \ 'vimshell':   $HOME . '/.vimshell_hist',
    \ 'ruby':       dictdir . '/ruby.dict',
    \ 'java':       dictdir . '/java.dict',
    \ 'javascript': dictdir . '/javascript.dict',
    \ 'coffee':     dictdir . '/javascript.dict',
    \ 'html':       dictdir . '/html.dict',
    \ 'php':        dictdir . '/php.dict',
    \ 'objc':       dictdir . '/objc.dict',
    \ 'swift':      dictdir . '/swift.dict',
    \ 'perl':       dictdir . '/perl.dict',
    \ 'scala':      dictdir . '/scala.dict',
  \ }

  let g:neocomplete#sources#buffer#disabled_pattern = '\.log\|\.log\.\|\.jax'
  let g:neocomplete#lock_buffer_name_pattern = '\.log\|\.log\.\|.*quickrun.*\|.jax'

  " keyword patterns
  let g:neocomplete#keyword_patterns = get(g:, 'neocomplete#keyword_patterns', {})
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'
  let g:neocomplete#keyword_patterns.perl = '\h\w*->\h\w*\|\h\w*::\w*'

  " input patterns
  let g:neocomplete#sources#omni#input_patterns = get(g:, 'neocomplete#sources#omni#input_patterns', {})
  let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
  let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
  let g:neocomplete#sources#omni#input_patterns.go = '\h\w*\.\?'
  let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

  let g:neocomplete#force_omni_input_patterns = get(g:, 'neocomplete#force_omni_input_patterns', {})
  let g:neocomplete#force_overwrite_completefunc = 1
  let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
  let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
  let g:neocomplete#force_omni_input_patterns.objc = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
  let g:neocomplete#force_omni_input_patterns.objcpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

  let g:clang_complete_auto = 0
  let g:clang_auto_select = 0
  let g:clang_use_library = 1

  " cancel or accept
  imap <silent> <expr> <C-f> pumvisible() ? neocomplete#cancel_popup() . "\<Right>" : "\<Right>"
  imap <silent> <expr> <C-b> pumvisible() ? neocomplete#cancel_popup() . "\<Left>" : "\<Left>"
  imap <silent> <expr> <C-a> pumvisible() ? neocomplete#cancel_popup() . "\<C-o>g0" : "\<C-o>g0"
  imap <silent> <expr> <C-e> pumvisible() ? neocomplete#cancel_popup() . "\<C-o>g$" : "\<C-o>g$"
  imap <silent> <expr> <C-c> pumvisible() ? neocomplete#cancel_popup() : "\<Esc>"
  imap <silent> <expr> <C-j> pumvisible() ? neocomplete#close_popup() : "\<CR>"
  inoremap <silent> <expr> <Space> pumvisible() ? neocomplete#cancel_popup() . "\<Space>" : "\<Space>"

  " omni completion
  autocmd vimrc FileType css
    \ setlocal omnifunc=csscomplete#CompleteCSS
  autocmd vimrc FileType html,markdown
    \ setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd vimrc FileType javascript
    \ setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd vimrc FileType python
    \ setlocal omnifunc=pythoncomplete#Complete
  autocmd vimrc FileType xml
    \ setlocal omnifunc=xmlcomplete#CompleteTags
endfunction
unlet s:bundle


"=== Plugin: NeoSnippet
"==============================================================================================
let g:neosnippet#disable_select_mode_mappings = 0
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory = g:dotfiles_path . '/_vim/snippets/'
let g:neosnippet#disable_runtime_snippets = { '_' : 1 }

if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" super tab completion
inoremap <silent> <expr> <TAB> <SID>SuperTabCompletion()

function! s:SuperTabCompletion()
  if pumvisible()
    return neocomplete#close_popup()
  elseif neosnippet#expandable_or_jumpable()
    return "\<C-g>u" . neosnippet#mappings#expand_or_jump_impl()
  elseif &ft =~ 'x\?html\|xml\|haml\|slim\|s\?css\|markdown' && emmet#isExpandable()
    return "\<C-g>u\<C-r>=emmet#expandAbbr(0, '')\<CR>\<Right>"
  elseif strpart(getline('.'), col('.') - 2, 1) =~ '\w'
    return neocomplete#start_manual_complete()
  else
    return "\<TAB>"
  endif
endfunction

" remove placeholders (hidden markers) before saving
autocmd vimrc BufWritePre *
  \ exec '%s/<`\d\+:\?[^>]*`>//ge'


"=== Plugin: Syntastic
"==============================================================================================
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_stl_format = '%E{✗ %fe (%e)}%B{, }%W{⚠ %fw (%w)}'

let g:syntastic_coffee_checkers = ['coffeelint', 'coffee']
let g:syntastic_coffee_coffeelint_args = '-f ' . g:dotfiles_path . '/_coffeelintrc'
let g:syntastic_tex_checkers = ['lacheck']

call CreastyCode('SyntasticErrorSign', 'red', '', '')
call CreastyCode('SyntasticWarningSign', 'yellow', '', '')


"=== Plugin: Auto save
"==============================================================================================
let g:auto_save = 1


"=== Plugin: Multiple Cursors
"==============================================================================================
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_key = '<C-x><C-m>'
let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_prev_key = '<C-p>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<C-c>'


"=== Plugin: TextManip
"==============================================================================================
" move selection
xmap <C-j> <Plug>(textmanip-move-down)
xmap <C-k> <Plug>(textmanip-move-up)
xmap <C-h> <Plug>(textmanip-move-left)
xmap <C-l> <Plug>(textmanip-move-right)

" duplicate line
vmap ,d <Plug>(textmanip-duplicate-down)
vmap ,D <Plug>(textmanip-duplicate-up)
nmap ,d <Plug>(textmanip-duplicate-down)
nmap ,D <Plug>(textmanip-duplicate-up)


"=== Plugin: SmartInput / Smartchr
"==============================================================================================
let s:bundle = neobundle#get('vim-smartinput')
function! s:bundle.hooks.on_source(bundle)

  let indents = "^\(\t\|  \)*"
  let opx = "\(" . join(['[+-\*/%?]', '[&|<>]\{1,2}', '>>>'], '\|') . "\)"
  let cr_key = '<C-r>=neocomplete#close_popup()<CR><CR>'


  "  Comma
  "-----------------------------------------------
  inoremap <expr> , smartchr#loop(', ', ',')


  "  Disable SmartInput inside string literal
  "-----------------------------------------------
  function! s:disable_smartinput_inside_string(char)
    call smartinput#define_rule({
      \ 'char':  a:char,
      \ 'at':    '^\([^"]*"[^"]*"\)*[^"]*"[^"]*\%#',
      \ 'input': a:char,
      \ 'mode':  'i',
    \ })
    call smartinput#define_rule({
      \ 'char':  a:char,
      \ 'at':    '^\([^'']*''[^'']*''\)*[^'']*''[^'']*\%#',
      \ 'input': a:char,
      \ 'mode':  'i',
    \ })
  endfunction


  "  CR
  "-----------------------------------------------
  call smartinput#define_rule({
    \ 'char':  '<CR>',
    \ 'at':    '\%#',
    \ 'input': cr_key,
    \ 'mode':  'i',
  \ })


  "  do-end pair
  "-----------------------------------------------
  " vim
  for at in ['fu', 'fun', 'func', 'funct', 'functi', 'functio', 'function', 'if', 'wh', 'whi', 'whil', 'while', 'for', 'try']
    call smartinput#define_rule({
      \ 'char':     '<CR>',
      \ 'at':       '^\s*' . at . '\>.*\%#',
      \ 'input':    cr_key . 'end' . at . '<Esc>O',
      \ 'mode':     'i',
      \ 'filetype': ['vim'],
    \ })
  endfor
  unlet at

  " ruby
  for at in [
      \ '^\s*\%(module\|def\|class\|if\|unless\|for\|while\|until\|case\)\>\%(.*[^.:@$]\<end\>\)\@!.*\%#',
      \ '^\s*\%(begin\)\s*\%#',
      \ '\%(^\s*#.*\)\@<!do\%(\s*|\k\+|\)\?\s*\%#',
    \ ]

    call smartinput#define_rule({
      \ 'char':     '<CR>',
      \ 'at':       at,
      \ 'input':    cr_key . 'end<Esc>O',
      \ 'mode':     'i',
      \ 'filetype': ['ruby'],
    \ })
  endfor

  call smartinput#define_rule({
    \ 'char':     '<CR>',
    \ 'at':       '\<\%(if\|unless\)\>.*\%#',
    \ 'input':    cr_key . 'end<Esc>O',
    \ 'filetype': ['ruby'],
    \ 'syntax':   ['rubyConditionalExpression']
  \ })

  " shell
  let s:rules = {
    \ '^\s*if\>.*\%#':             'fi',
    \ '^\s*case\>.*\%#':           'esac',
    \ '\%(^\s*#.*\)\@<!do\>.*\%#': 'done',
  \ }

  for [at, end_word] in items(s:rules)
    call smartinput#define_rule({
      \ 'char':     '<CR>',
      \ 'at':       at,
      \ 'input':    cr_key . end_word . '<Esc>O',
      \ 'filetype': ['sh', 'zsh'],
    \ })
  endfor

  unlet at
  unlet end_word
  unlet s:rules


  "  Looping with Smartchr
  "-----------------------------------------------
  let s:rules = {
    \ '<':     "smartchr#loop('<', '<<')",
    \ '>':     "smartchr#loop('>', '>>', '>>>')",
    \ '&':     "smartchr#loop('&', '&&')",
    \ '<Bar>': "smartchr#loop('|', '||')",
  \ }

  for [char, rule] in items(s:rules)
    call smartinput#map_to_trigger('i', char, char, char)

    let uchar = substitute(char, '<Bar>', '|', '')

    call smartinput#define_rule({
      \ 'char':  char,
      \ 'at':    '\%#',
      \ 'input': ' ' . char . ' ',
      \ 'mode':  'i',
    \ })
    call smartinput#define_rule({
      \ 'char':  char,
      \ 'at':    indents . '\%#',
      \ 'input': char . ' ',
      \ 'mode':  'i',
    \ })
    call smartinput#define_rule({
      \ 'char':  char,
      \ 'at':    '\S \%#',
      \ 'input': char . ' ',
      \ 'mode':  'i',
    \ })
    call smartinput#define_rule({
      \ 'char':  char,
      \ 'at':    uchar . ' \%#',
      \ 'input': '<BS><C-r>=' . rule . '<CR><Space>',
      \ 'mode':  'i',
    \ })

    call s:disable_smartinput_inside_string(char)
  endfor

  unlet char
  unlet rule
  unlet s:rules

  " ruby block
  call smartinput#define_rule({
    \ 'char':     '<Bar>',
    \ 'at':       '\({\|do\)\s*\%#',
    \ 'input':    '<Bar><Bar><Left>',
    \ 'mode':     'i',
    \ 'filetype': ['ruby'],
  \ })


  "  Space around operators
  "-----------------------------------------------
  for op in ['+', '-', '/', '*', '=', '%']
    let eop = escape(op, '*')

    call smartinput#map_to_trigger('i', op, op, op)

    call smartinput#define_rule({
      \ 'char':  op,
      \ 'at':    '\w\%#',
      \ 'input': ' ' . op . ' ',
      \ 'mode':  'i',
    \ })
    call smartinput#define_rule({
      \ 'char':  op,
      \ 'at':    '\(^\|\w\) ' . eop . '\%#',
      \ 'input': op . ' ',
      \ 'mode':  'i',
    \ })
    call smartinput#define_rule({
      \ 'char':  op,
      \ 'at':    eop . ' \%#',
      \ 'input': '<BS>' . op . ' ',
      \ 'mode':  'i',
    \ })

    call s:disable_smartinput_inside_string(op)
  endfor
  unlet op

  " compound assignment operator
  call smartinput#define_rule({
    \ 'char':  '=',
    \ 'at':    '\s[&|?+-/<>]\%#',
    \ 'input': '= ',
    \ 'mode':  'i',
  \ })
  call smartinput#define_rule({
    \ 'char':  '=',
    \ 'at':    '[&|?+-/<>] \%#',
    \ 'input': '<BS>= ',
    \ 'mode':  'i',
  \ })

  " slash as non arithmetic operators
  call smartinput#define_rule({
    \ 'char':  '/',
    \ 'at':    '\(^\|\S\)/\S[^/]*\%#',
    \ 'input': '/',
    \ 'mode':  'i',
  \ })

  " decrement/increment operators
  for op in ['+', '-']
    call smartinput#define_rule({
      \ 'char':  op,
      \ 'at':    ' ' . op . ' \%#',
      \ 'input': '<BS><BS><BS>' . op . op,
      \ 'mode':  'i',
    \ })
    call smartinput#define_rule({
      \ 'char':  op,
      \ 'at':    indents . op . ' \%#',
      \ 'input': op,
      \ 'mode':  'i',
    \ })
    call smartinput#define_rule({
      \ 'char':  op,
      \ 'at':    '\w' . op . op . '\%#',
      \ 'input': '<BS><BS><Space>' . op . op . '<Space>',
      \ 'mode':  'i',
    \ })
  endfor
  unlet op

  " erb
  call smartinput#define_rule({
    \ 'char':     '%',
    \ 'at':       '<\%#',
    \ 'input':    '%  %<Left><Left>',
    \ 'mode':     'i',
    \ 'filetype': ['eruby'],
  \ })
  call smartinput#define_rule({
    \ 'char':     '%',
    \ 'at':       '<%[=-]\? \%#',
    \ 'input':    "<C-r>=smartchr#loop('% ', '%= ', '%- ')<CR>",
    \ 'mode':     'i',
    \ 'filetype': ['eruby'],
  \ })

  " left arrow (go)
  call smartinput#define_rule({
    \ 'char':     '-',
    \ 'at':       '< \%#',
    \ 'input':    '<BS>-<Space>',
    \ 'mode':     'i',
  \ })
  call smartinput#define_rule({
    \ 'char':     '-',
    \ 'at':       '<\%#',
    \ 'input':    '-<Space>',
    \ 'mode':     'i',
  \ })

  " right arrow
  call smartinput#define_rule({
    \ 'char':     '>',
    \ 'at':       '[-=] \%#',
    \ 'input':    '<BS>><Space>',
    \ 'mode':     'i',
  \ })
  call smartinput#define_rule({
    \ 'char':     '>',
    \ 'at':       '[-=]\%#',
    \ 'input':    '><Space>',
    \ 'mode':     'i',
  \ })


  "  left parenthes
  "-----------------------------------------------
  call smartinput#map_to_trigger('i', '(', '(', '(')

  " ruby lambda
  " FIXME: not working
  call smartinput#define_rule({
    \ 'char':     '(',
    \ 'at':       '-> \%#',
    \ 'input':    '<BS>()<Left>',
    \ 'mode':     'i',
    \ 'filetype': ['ruby'],
  \ })


  "  C-t
  "-----------------------------------------------
  call smartinput#map_to_trigger('i', '<C-t>', '<C-t>', '<C-t>')

  " delete spaces around
  call smartinput#define_rule({
    \ 'char':  '<C-t>',
    \ 'at':    ' [+-\*/%?&|<>=]\+ \%#',
    \ 'input': '<Esc>bhxf<Space>cl',
    \ 'mode':  'i',
  \ })
  call smartinput#define_rule({
    \ 'char':  '<C-t>',
    \ 'at':    ' [+-\*/%?&|<>=]\+\%#',
    \ 'input': '<Space><Esc>bhxf<Space>cl',
    \ 'mode':  'i',
  \ })


  "  Backspace
  "-----------------------------------------------
  call smartinput#map_to_trigger('i', '<BS>', '<BS>', '<BS>')

  " delete whole pair
  call smartinput#define_rule({
    \ 'char':  '<BS>',
    \ 'at':    '(\s*)\%#',
    \ 'input': '<C-o>dF(<BS>',
    \ 'mode':  'i',
  \ })
  call smartinput#define_rule({
    \ 'char':  '<BS>',
    \ 'at':    '{\s*}\%#',
    \ 'input': '<C-o>dF{<BS>',
    \ 'mode':  'i',
  \ })
  call smartinput#define_rule({
    \ 'char':  '<BS>',
    \ 'at':    '<\s*>\%#',
    \ 'input': '<C-o>dF<<BS>',
    \ 'mode':  'i',
  \ })
  call smartinput#define_rule({
    \ 'char':  '<BS>',
    \ 'at':    '\[\s*\]\%#',
    \ 'input': '<C-o>dF[<BS>',
    \ 'mode':  'i',
  \ })


  "  C-w
  "-----------------------------------------------
  call smartinput#map_to_trigger('i', '<C-w>', '<C-w>', '<C-w>')

  call smartinput#define_rule({
    \ 'char':  '<C-w>',
    \ 'at':    '\%#',
    \ 'input': '<C-w>',
    \ 'mode':  'i',
  \ })

  " delete with spaces around
  call smartinput#define_rule({
    \ 'char':  '<C-w>',
    \ 'at':    ' ' . opx . '=\? \%#',
    \ 'input': '<C-o>dF<Space><BS>',
    \ 'mode':  'i',
  \ })
  call smartinput#define_rule({
    \ 'char':  '<C-w>',
    \ 'at':    ' =\{1,3} \%#',
    \ 'input': '<C-o>dF<Space><BS>',
    \ 'mode':  'i',
  \ })


  "  Dot
  "-----------------------------------------------
  call smartinput#map_to_trigger('i', '.', '.', '.')

  call smartinput#define_rule({
    \ 'char':     '.',
    \ 'at':       '\w\%#',
    \ 'input':    "<C-r>=smartchr#loop('.', '->', '...')<CR>",
    \ 'mode':     'i',
    \ 'filetype': ['c', 'cpp'],
  \ })
  call smartinput#define_rule({
    \ 'char':     '.',
    \ 'at':       '\w\%#',
    \ 'input':    "<C-r>=smartchr#loop('.', '->')<CR>",
    \ 'mode':     'i',
    \ 'filetype': ['perl', 'php'],
  \ })
  call smartinput#define_rule({
    \ 'char':     '.',
    \ 'at':       '\w\s*\%#',
    \ 'input':    "<C-r>=smartchr#loop('.', '=>')<CR>",
    \ 'mode':     'i',
    \ 'filetype': ['scala'],
  \ })


  "  Go 'chan'
  "-----------------------------------------------
  call smartinput#map_to_trigger('i', 'n', 'n', 'n')

  call smartinput#define_rule({
    \ 'char':     'n',
    \ 'at':       '\(chan\|<-chan\|chan<-\)\%#',
    \ 'input':    "<C-r>=smartchr#loop('chan', '<-chan', 'chan<-')<CR>",
    \ 'mode':     'i',
    \ 'filetype': ['go'],
  \ })

  call smartinput#define_rule({
    \ 'char':     'n',
    \ 'at':       '<-\%#',
    \ 'input':    "<C-r>=smartchr#loop('chan', '<-chan', 'chan<-')<CR>",
    \ 'mode':     'i',
    \ 'filetype': ['go'],
  \ })


  "  Markdown title
  "-----------------------------------------------
  for d in ['-', '=']
    call smartinput#define_rule({
      \ 'char':     d,
      \ 'at':       '^\n\%#',
      \ 'input':    d,
      \ 'mode':     'i',
      \ 'filetype': ['markdown'],
    \ })
    call smartinput#define_rule({
      \ 'char':     d,
      \ 'at':       '^\%#',
      \ 'input':    "<C-r>=" . smartinput#sid() . "markdown_title_line('" . d . "')<CR>",
      \ 'mode':     'i',
      \ 'filetype': ['markdown'],
    \ })
  endfor
  unlet d

  call smartinput#define_rule({
    \ 'char':     '-',
    \ 'at':       '^-\%#',
    \ 'input':    "<C-r>=repeat('-', 80)<CR>",
    \ 'mode':     'i',
    \ 'filetype': ['markdown'],
  \ })

  function! s:markdown_title_line(char)
    let text = getline(line('.') - 1)

    if text =~ '^\s*[-=]\s'
      return a:char . ' '
    else
      return repeat(a:char, strwidth(text))
    endif
  endfunction

endfunction
unlet s:bundle


"=== Plugin: Operator replace
"==============================================================================================
map R <Plug>(operator-replace)


"=== Plugin: OpenBrowser
"==============================================================================================
" disable netrw's gx mapping.
let g:netrw_nogx = 1

nnoremap gx <Plug>(openbrowser-smart-search)
vnoremap gx <Plug>(openbrowser-smart-search)


"=== Plugin: Emmet
"==============================================================================================
let g:user_emmet_mode = 'i'
let g:user_emmet_leader_key = '<c-y>'
let g:user_emmet_settings = {
  \ 'lang': 'ja',
  \ 'indentation': '  ',
\ }


"=== Plugin: Multiblock
"==============================================================================================
omap ab <Plug>(textobj-multiblock-a)
omap ib <Plug>(textobj-multiblock-i)
xmap ab <Plug>(textobj-multiblock-a)
xmap ib <Plug>(textobj-multiblock-i)

let g:textobj_multiblock_blocks = [
  \ [ '(', ')' ],
  \ [ '[', ']' ],
  \ [ '{', '}' ],
  \ [ '<', '>' ],
  \ [ '"', '"' ],
  \ [ "'", "'" ],
  \ [ '「', '」' ],
  \ [ '（', '）' ],
\ ]


"=== Plugin: surround
"==============================================================================================
nmap ,( csw(
nmap ,) csw)
nmap ,{ csw{
nmap ,} csw}
nmap ,[ csw[
nmap ,] csw]
nmap ,' csw'
nmap ," csw"


"=== Plugin: NerdCommenter
"==============================================================================================
nmap gcc <leader>c<Space>
vmap gcc <leader>cm
nmap gcs <leader>cs
vmap gcs <leader>cs
nmap gcy <leader>cy
vmap gcy <leader>cy
nmap gcI <leader>c$
vmap gcI <leader>c$
nmap gcA <leader>cA
vmap gcA <leader>cA


"=== Plugin: EasyMotion
"==============================================================================================
let g:EasyMotion_leader_key = '<Space>'
let g:EasyMotion_keys = 'hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'

call CreastyCode('EasyMotionTarget', 'yellow', 'dark_yellow', 'underline')


"=== Plugin: Session
"==============================================================================================
let g:session_autosave = 0
let g:session_autoload = 0
let g:session_default_to_last = 0
let g:session_default_overwrite = 1
let g:session_command_aliases = 1

set sessionoptions-=blank
set sessionoptions-=help
set sessionoptions-=options

nnoremap gs :OpenSession<Space>
nnoremap <Leader>sc :CloseSession<CR>
nnoremap <Leader>ss :SaveSession<CR>


"=== Plugin: NERD Tree
"==============================================================================================
let g:NERDSpaceDelims = 1
let g:NERDShutUp = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\~$', '\.sass-cache$', '\.git$']
let g:NERDTreeAutoDeleteBuffer = 1

let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_startup_cd = 0

nnoremap <silent> <expr> <C-s> <SID>NERDTreeToggleOrFocus()

function! s:NERDTreeToggleOrFocus()
  let isOpen = 0

  if exists('t:NERDTreeBufName')
    let isOpen = (bufwinnr(t:NERDTreeBufName) != -1 && bufnr(t:NERDTreeBufName) != bufnr('%'))
  endif

  if isOpen
    return ":0wincmd w\<CR>"
  else
    return ":NERDTreeTabsToggle\<CR>"
  endif
endfunction


"=== Plugin: Submode
"==============================================================================================
let g:submode_leave_with_key = 1

" window size
call submode#enter_with('winsize', 'n', '', '<C-w>>', '<C-w>>')
call submode#map('winsize', 'n', '', '>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', '<C-w><', '<C-w><')
call submode#map('winsize', 'n', '', '<', '<C-w><')
call submode#enter_with('winsize', 'n', '', '<C-w>+', '<C-w>-')
call submode#map('winsize', 'n', '', '-', '<C-w>+')
call submode#enter_with('winsize', 'n', '', '<C-w>-', '<C-w>+')
call submode#map('winsize', 'n', '', '+', '<C-w>-')

" tabpage
call submode#enter_with('changetab', 'n', '', 'gt', 'gt')
call submode#map('changetab', 'n', '', 't', 'gt')
call submode#enter_with('changetab', 'n', '', 'gT', 'gT')
call submode#map('changetab', 'n', '', 'T', 'gT')

" macro
call submode#enter_with('macro', 'n', '', '@@', '@@')
call submode#map('macro', 'n', '', '@', '@@')

" move to next/previous fold
call submode#enter_with('move-to-fold', 'n', '', 'zj', 'zj')
call submode#map('move-to-fold', 'n', '', 'j', 'zj')
call submode#enter_with('move-to-fold', 'n', '', 'zk', 'zk')
call submode#map('move-to-fold', 'n', '', 'k', 'zk')

" better undo with x-es
function! s:my_x()
  undojoin
  normal! "_x
endfunction

noremap <silent> <Plug>(my-x) :<C-u>call <SID>my_x()<CR>

call submode#enter_with('my_x', 'n', '', 'x', '"_x')
call submode#map('my_x', 'n', 'r', 'x', '<Plug>(my-x)')


"=== Plugin: Memo List
"==============================================================================================
let g:memolist_memo_suffix = 'md'
let g:memolist_path = '~/Dropbox/memo'
let g:memolist_unite = 1
let g:memolist_unite_source = 'file_rec'
let g:memolist_unite_option = '-start-insert'

nnoremap ,mn :MemoNew<CR>
nnoremap ,mg :MemoGrep<CR>
nnoremap ,ml :MemoList<CR>


"=== Plugin: Precious
"==============================================================================================
let g:precious_enable_switchers = {
  \ '*':        { 'setfiletype': 0 },
  \ 'html':     { 'setfiletype': 1 },
  \ 'markdown': { 'setfiletype': 1 },
\ }


"=== Plugin: Switch
"==============================================================================================
let g:switch_custom_definitions = [
  \ ['public', 'protected', 'private'],
  \ ['on', 'off'],
  \ ['it', 'specify'],
  \ ['describe', 'context'],
  \ ['and', 'or'],
  \ ['if', 'unless'],
  \ ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
  \ ['Sun', 'Sat', 'Fri', 'Thu', 'Wed', 'Tue', 'Mon'],
  \ ['日', '土', '金', '木', '水', '火', '月'],
  \ ['NeoBundle', 'NeoBundleLazy', 'NeoBundleDisable'],
\ ]

nnoremap <silent> - :Switch<CR>


"=== Plugin: Altr
"==============================================================================================
nmap ga <Plug>(altr-forward)
nmap gA <Plug>(altr-back)

" Header files
call altr#define('%.c', '%.h', '%.m')

" Jasmine / Karma
call altr#define('src/%.coffee', 'spec/%_spec.coffee', 'test/%_spec.coffee', 'test/%.coffee')

" Rails
call altr#define('app/models/%.rb', 'spec/models/%_spec.rb', 'spec/factories/%s.rb')
call altr#define('app/controllers/%.rb', 'spec/controllers/%_spec.rb')
call altr#define('app/helpers/%.rb', 'spec/helpers/%_spec.rb')
call altr#define('%.html.haml', '%_smart_phone.html.haml')
call altr#define('%.html.slim', '%_smart_phone.html.slim')


"=== Plugin: vim rails
"==============================================================================================
nmap gr :R<CR>


"=== Plugin: Ruby refactoring
"==============================================================================================
nnoremap <Leader>rap  :RAddParameter<CR>
nnoremap <Leader>rcpc :RConvertPostConditional<CR>
nnoremap <Leader>rel  :RExtractLet<CR>
vnoremap <Leader>rec  :RExtractConstant<CR>
vnoremap <Leader>relv :RExtractLocalVariable<CR>
nnoremap <Leader>rit  :RInlineTemp<CR>
vnoremap <Leader>rrlv :RRenameLocalVariable<CR>
vnoremap <Leader>rriv :RRenameInstanceVariable<CR>
vnoremap <Leader>rem  :RExtractMethod<CR>


"=== Plugin: backend_if
"==============================================================================================
autocmd vimrc FileType ruby
  \ nnoremap <Leader>ts :ToggleStatement<CR>


"=== Plugin: vim-go
"==============================================================================================
let s:bundle = neobundle#get('vim-go')
function! s:bundle.hooks.on_source(bundle)
  let g:loaded_gocode = 1  " disable fucking slow completion
  let g:go_auto_type_info = 0
  let g:go_disable_autoinstall = 1
  let g:go_snippet_engine = 'neosnippet'
  let g:go_fmt_autosave = 0

  autocmd vimrc FileType go
    \ setlocal et
endfunction
unlet s:bundle


"=== Plugin: Sigunature
"==============================================================================================
" hide upper case marks
let g:SignatureIncludeMarks = 'abcdefghijklmnopqrstuvwxyz'


"=== Plugin: IndentGuides
"==============================================================================================
if has('gui_running')
  let g:indent_guides_enable_on_vim_startup = 1
  let g:indent_guides_guide_size = 1
  let g:indent_guides_space_guides = 1
  let g:indent_guides_auto_colors = 0
  let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

  call CreastyCode('IndentGuidesOdd', 'black', 'black', '')
  call CreastyCode('IndentGuidesEven', 'black2', 'black2', '')
end


"=== Plugin: EasyAlign
"==============================================================================================
vnoremap <silent> L :EasyAlign<cr>


"=== Plugin: Over
"==============================================================================================
let g:over_command_line_key_mappings = {
  \ "\<C-c>": "\<Esc>",
  \ "\<C-j>": "\<CR>",
\ }
let g:over#command_line#paste_escape_chars = '\\/.*$^~'

cnoremap <expr> / <SID>MyOverCommandLine()

function! s:MyOverCommandLine()
  let line = getcmdtype() . getcmdline()

  if line == ':'
    return "OverCommandLine\<CR>%s/"
  elseif line == ":'<,'>"
    return "OverCommandLine\<CR>\<C-u>'<,'>s/"
  else
    return '/'
  endif
endfunction


"=== Plugin: Quickrun
"==============================================================================================
let g:quickrun_config = {}
let g:quickrun_config['_'] = {
  \ 'runner': 'vimproc',
  \ 'outputter/buffer/split': ':botright 15sp',
  \ 'outputter/buffer/running_mark': '',
\ }

let g:quickrun_config['ruby.rspec'] = { 'command': 'rspec', 'cmdopt': 'bundle exec', 'exec': '%o %c %s' }

let g:quickrun_config['markdown'] = {
  \ 'outputter': 'null',
  \ 'command':   'open',
  \ 'cmdopt':    '-a',
  \ 'args':      'Marked',
  \ 'exec':      '%c %o %a %s',
\ }

let g:quickrun_config['javascript'] = { 'command': 'node' }

let g:quickrun_config['coffee'] = {
  \ 'command' : 'coffee',
  \ 'exec' : ['%c -cbp %s | node'],
\ }


"=== Plugin: Fugitive
"==============================================================================================
let s:bundle = neobundle#get('vim-fugitive')
function! s:bundle.hooks.on_source(bundle)
  autocmd vimrc User fugitive
    \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
    \   nnoremap <buffer> .. :edit %:h<CR> |
    \ endif

  autocmd vimrc BufReadPost fugitive://*
    \ set bufhidden=delete
endfunction
unlet s:bundle


"=== Plugin: Unite
"==============================================================================================
let s:bundle = neobundle#get('unite.vim')
function! s:bundle.hooks.on_source(bundle)
  let g:unite_enable_start_insert = 1
  let g:unite_winheight = 10
  let g:unite_enable_ignore_case = 1
  let g:unite_enable_smart_case = 1
  let g:unite_source_rec_min_cache_files = 50
  let g:unite_source_rec_max_cache_files = 30000
  let g:unite_source_history_yank_enable = 1

  let s:file_rec_ignore_pattern = (unite#sources#rec#define()[0]['ignore_pattern'])
    \ . '\|\.\%(jpe\?g\|png\|gif\|pdf\|ttf\|otf\|eot\|woff\|svg\|svgz\)$\|\%(^\|/\)\%(tmp\|cache\|public\/system\)/'
  call unite#custom#source('file', 'ignore_pattern', s:file_rec_ignore_pattern)
  call unite#custom#source('file_rec', 'ignore_pattern', s:file_rec_ignore_pattern)
  call unite#custom#source('file_rec/async', 'ignore_pattern', s:file_rec_ignore_pattern)
  call unite#custom#source('grep', 'ignore_pattern', s:file_rec_ignore_pattern)

  if executable('ag')
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
    let g:unite_source_grep_recursive_opt = ''
  endif

  autocmd vimrc FileType unite call s:unite_my_settings()

  function! s:unite_my_settings()
    let unite = unite#get_current_unite()

    call clearmatches()

    imap <buffer> <C-h> <BS>
    inoremap <buffer> <C-d> <Del>
    inoremap <buffer> <C-b> <Left>
    inoremap <buffer> <C-f> <Right>
    inoremap <buffer> <C-e> <End>

    inoremap <expr> <silent> <buffer> ^
      \ expand('#' . unite.prev_bufnr . ':h') . '/'

    nmap <buffer> <C-q> <Plug>(unite_exit)
    imap <buffer> <C-q> <Plug>(unite_exit)
    imap <buffer> <C-k> <Plug>(unite_delete_backward_line)
    imap <buffer> <C-a> <Plug>(unite_move_head)
    imap <buffer> <C-j> <Plug>(unite_do_default_action)
    imap <buffer> <C-l> <Plug>(unite_redraw)

    if unite.buffer_name =~# '^search'
      nnoremap <silent><buffer><expr> r unite#do_action('replace')
    else
      nnoremap <silent><buffer><expr> r unite#do_action('rename')
    endif
  endfunction
endfunction
unlet s:bundle

nnoremap <silent> <C-q> :Unite -hide-source-names -buffer-name=files file_rec/async<CR>
nnoremap <silent> <Space>p :Unite -hide-source-names history/yank<CR>
imap <silent> <C-x><C-v> <C-o><Space>p


"=== Plugin: Anzu
"==============================================================================================
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)


"=== Plugin: Lightline
"==============================================================================================
let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

let g:lightline = {
  \ 'colorscheme': 'creastycode',
  \ 'mode_map': { 'c': 'NORMAL' },
  \ 'active': {
    \ 'left': [
      \ ['mode', 'paste'],
      \ ['fugitive','filename']
    \ ],
    \ 'right': [
      \ ['syntastic', 'lineinfo', 'percent'],
      \ ['filetype'],
      \ ['fileencoding']
    \ ]
  \ },
  \ 'component_function': {
    \ 'modified':     'LightlineModified',
    \ 'readonly':     'LightlineReadonly',
    \ 'fugitive':     'LightlineFugitive',
    \ 'filename':     'LightlineFilename',
    \ 'fileformat':   'LightlineFileformat',
    \ 'filetype':     'LightlineFiletype',
    \ 'fileencoding': 'LightlineFileencoding',
    \ 'mode':         'LightlineMode',
    \ 'anzu':         'anzu#search_status',
  \ },
  \ 'component_expand': {
    \ 'syntastic': 'SyntasticStatuslineFlag',
  \ },
  \ 'component_type': {
    \ 'syntastic': 'error',
  \ },
  \ 'subseparator': { 'left': '|', 'right': '|' },
\ }

if has('gui_running')
  let g:lightline.separator = { 'left': "\u2b80", 'right': "\u2b82" }
  let g:lightline.subseparator = { 'left': "\u2b81", 'right': "\u2b83" }
endif

function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  let icon = has("gui_running") ? "\u2b64" : "!!"
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? icon : ''
endfunction

function! LightlineFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' ? g:lightline.ctrlp_item :
    \ fname == '__Tagbar__' ? 'Tagbar' :
    \ fname =~ '__Gundo\|NERD_tree' ? '' :
    \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
    \ &ft == 'unite' ? unite#get_status_string() :
    \ &ft == 'vimshell' ? vimshell#get_status_string() :
    \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
    \ ('' != fname ? fname : '[No Name]') .
    \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let icon = has("gui_running") ? "\u2b60 " : "~ "
      let branch = fugitive#head()
      let branch = substitute(branch, '^feature/', 'F/', '')
      let branch = substitute(branch, '^hotfix/', 'X/', '')
      let branch = substitute(branch, '^release/', 'R/', '')
      return strlen(branch) ? icon . branch : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'plain') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
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

autocmd vimrc BufWritePost * call lightline#update()

autocmd vimrc User VimrcReloadPost call <SID>refresh_lightline()
function! s:refresh_lightline()
  call lightline#disable()
  call lightline#enable()
endfunction


" ---------------------------------------------------------------------------------------------
"                                             END
" ---------------------------------------------------------------------------------------------
doautocmd User VimrcLoadPost
