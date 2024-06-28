if !exists('g:vscode')
  let mapleader="\<Space>"
  let g:mapleader="\<Space>"
endif

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set t_Co=256 "color 256
set nocompatible 
filetype plugin indent on
syntax on
hi Normal ctermfg=none

"base
set autoread "内容が変更されたら自動的に読み込む
set hidden "複数のファイルを編集可能にする
set history=1000
set ruler "カーソルの位置表示を行いパーセンテージ
set number
set numberwidth=1
set title
set nowrap
set mouse= "mouse off"
set showcmd "入力中のコマンドを表示する
set cursorline "カーソルがある行を表示
hi clear CursorLine
set laststatus=2 "ステータスラインを表示
highlight LineNr ctermfg=15 "ナンバーのハイライト 
set scrolloff=5
set nobackup
set noswapfile
set nowb 

"search
set incsearch
set ignorecase "検索時に大小文字の区別を無視する
set hlsearch "検索時にハイライト
nnoremap <Leader>n :noh<CR>

"indent and tab 
set autoindent
"set noautoindent "インデントさせない
set smartindent
set tabstop=2
set softtabstop=4
set shiftwidth=4
set expandtab

set clipboard+=unnamedplus

map <leader>w :w!<cr>
"インサートモード時に行頭、行末に移動
inoremap <C-l> <Esc>$a
inoremap <C-a> <Esc>^a

"windowの移動 
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l

"shift + で右端に移動
nnoremap <S-h> ^
nnoremap <S-l> $

"leader leaderでヴィジュアルモード
nmap <Leader><Leader> V

"xをyankさせない
nnoremap x "_x
nnoremap D "_D"

"language
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType go setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType json setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType ejs setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType erb setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd Filetype vue setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd BufRead,BufNewFile *.ts,*.tsx,*.ts set filetype=typescript tabstop=2 shiftwidth=2 softtabstop=2 textwidth=100
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown

"plugin 
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nathanaelkane/vim-indent-guides'  
" frontend
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'terryma/vim-multiple-cursors'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/html5.vim'
Plug 'prettier/vim-prettier'
Plug 'jparise/vim-graphql'
Plug 'simeji/winresizer'
Plug 'styled-components/vim-styled-components'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'vim-test/vim-test'
Plug 'thinca/vim-quickrun', {'on': 'QuickRun'}
"server
Plug 'fatih/vim-go'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

"color 
color gruvbox 
set background=dark
let g:gruvbox_italic=1

"indent guide
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

"ctrlP
"nnoremap <Leader>o :CtrlPBuffer<CR>
nnoremap <Leader>o :CtrlP<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
"let g:ctrlp_custom_ignore = '\v[\/](node_modules|build)$'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"NERDTree 
let NERDChristmasTree=0
let NERDTreeWinSize=25
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
map <Leader>a :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.git$', '.DS_Store', 'node_modules']

"jsx 
set conceallevel=1
let g:jsx_ext_required = 0 

"->  winresizer 
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1

"-> deoplete.
let g:deoplete#enable_at_startup = 1

inoremap <expr><C-y>  deoplete#close_popup()
inoremap <expr><C-e>  deoplete#cancel_popup()"

"ale
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 1 
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ }
" ファイルオープン時にチェックしたくない場合
let g:ale_lint_on_enter = 0
let g:ale_linters = {
 \  'markdown': ['textlint']
 \}

"vim-airline
let g:airline_powerline_fonts = 1

"alvan/vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*tsx,*ts'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx,*.ts'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

"vim-fugitive
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gc :Gcommit<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gb :Gblame<CR>

"prettier
nmap <Leader>p <Plug>(Prettier)
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier
