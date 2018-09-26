"""""""""""""""""""""""""
"->author kamimura
"->twitter:@kamimura-dev
"""""""""""""""""""""""""

"""""""""""""""""""""""""
"->@leadermap <Space>
"""""""""""""""""""""""""
let mapleader="\<Space>"
let g:mapleader="\<Space>"

"""""""""""""""""""""""""
"->@encoding
"""""""""""""""""""""""""
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

"""""""""""""""""""""""""
"->@base setting
"""""""""""""""""""""""""
set t_Co=256 "color 256
set nocompatible 
filetype plugin indent on
syntax on
"syntax enable

"""""""""""""""""""""""""
"->@schema & color
"""""""""""""""""""""""""
"hi Comment ctermfg=blue "コメントのカラーを青に変える 
hi Normal ctermfg=none

"""""""""""""""""""""""""
"->@No backup
"""""""""""""""""""""""""
set nobackup
set noswapfile
set nowb

"""""""""""""""""""""""""
"->@search
"""""""""""""""""""""""""
set incsearch
set ignorecase "検索時に大小文字の区別を無視する
set hlsearch "検索時にハイライト

"""""""""""""""""""""""""
"->@base settings
"""""""""""""""""""""""""
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

"""""""""""""""""""""""""
"->@Indent and Tab 
"""""""""""""""""""""""""
set autoindent
"set noautoindent "インデントさせない
set smartindent
set tabstop=2
set softtabstop=4
set shiftwidth=4
set expandtab

"""""""""""""""""""""""""
"->@Language Filetype
"""""""""""""""""""""""""
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType go setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType json setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType ejs setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType erb setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.ts,*.tsx,*.ts set filetype=typescript

"""""""""""""""""""""""""
"->@auto-save
"""""""""""""""""""""""""
"let g:auto_save=1 保存時に自動的にセーブ

"""""""""""""""""""""""""
"->@NeoBundle Plugin
"""""""""""""""""""""""""
if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

"NeoBundle setting
NeoBundle 'VundleVim/Vundle.vim'
NeoBundle 'Shougo/neocomplcache'

"color shceme
NeoBundle 'morhetz/gruvbox' "default
NeoBundle 'rakr/vim-one'

"IDE
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'townk/vim-autoclose'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-surround'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'mileszs/ack.vim'
"NeoBundle 'ervandew/supertab'
"NeoBundle 'airblade/vim-gitgutter'

"NeoBundle 'majutsushi/tagbar'
NeoBundle 'terryma/vim-multiple-cursors'

"NeoBundle 'yggdroot/indentline'
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'humiaozuzu/TabBar'
"NeoBundle 'valloric/youcompleteme'
NeoBundle 'shougo/unite.vim'
NeoBundle 'shougo/neosnippet'
NeoBundle 'shougo/neosnippet-snippets'
NeoBundle 'alvan/vim-closetag'

"web frontend
NeoBundle 'othree/html5.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'peitaln/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'posva/vim-vue'
NeoBundle 'fatih/vim-go'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-endwise' "ruby end tag
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'peitalin/vim-jsx-typescript'
NeoBundle 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
NeoBundle 'heavenshell/vim-jsdoc'

"wakatime code traffic *https://wakatime.com/
NeoBundle 'wakatime/vim-wakatime'

"plugin setting start
filetype plugin indent on

call neobundle#end()

"""""""""""""""""""""""
"->@colorscheme
"""""""""""""""""""""""
"color gruvbox
color one
set background=dark
"let g:gruvbox_italic=1

"""""""""""""""""""""""
"->@NERDTree
"""""""""""""""""""""""
let NERDChristmasTree=0
let NERDTreeWinSize=20
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1

"key map
map <C-a> :NERDTreeToggle<CR>
"map <leader>w :NERDTreeToggle<CR>
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

"""""""""""""""""""""""""""""""""
"->@neocompletecash
""""""""""""""""""""""""""""""""
" disable autocomplpop.
let g:acp_enableatstartup = 0
" " Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" " Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" " Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"
" " Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
     \ 'default' : ''
         \ }

let g:neocomplcache_enable_camel_case_completion = 1

"inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "<CR>"
hi WarningMsg guifg=bg
inoremap <expr><CR>   pumvisible() ? "\<C-n>" . neocomplcache#close_popup()  : "<CR>"

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
"<CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
 endfunction
"<TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()"

"""""""""""""""""""""""""""""""""""""
"->@close tag
""""""""""""""""""""""""""""""""""""
"set ts=2 sw=2 et
let g:indent_guildes_start_level = 2
inoremap { {}<Left> 
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

"javascript
set conceallevel=1
let g:jsx_ext_required = 1 

""""""""""""""""""""""""""""""
"->@Unite vim leadermap <Space>
""""""""""""""""""""""""""""""
nnoremap [unite] <Nop>
nmap <Space> [unite]
nmap <silent> [unite]f :<C-u>Unite file<CR>
nmap <silent> [unite]b :<C-u>Unite buffer<CR>

"alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*tsx,*ts'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx,*.ts'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
"set clipboard+=unnamed,autoselect
set clipboard=unnamedplus

"Emmet
set ft=jsx

""""""""""""""""""""""""""""""
"->@インサートモード時に行頭、行末に移動
""""""""""""""""""""""""""""""
inoremap <C-l> <Esc>$a
inoremap <C-a> <Esc>^a

""""""""""""""""""""""""""""""
"->@fast save
""""""""""""""""""""""""""""""
"nmap <leader>q :q!<cr>
map <leader>w :w!<cr>

"tab bar
"let g:Tb_MaxSize = 2
"let g:Tb_MaxWrap = 1

""""""""""""""""""""""""""""""
"->@easy motion
""""""""""""""""""""""""""""""
let g:EasyMotion_leader_key = '<Leader>'

""""""""""""""""""""""""""""""
"->@airline
""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

""""""""""""""""""""""""""""""
"->@snippet
""""""""""""""""""""""""""""""
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/snippets/'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"leader + oで新しいファイル
nnoremap <Leader>o :CtrlP<CR>

"leader leaderでヴィジュアルモード
nmap <Leader><Leader> V

"leader>pとleader>yでシステムのクリップボードにコピー&ペーストする
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

let g:user_emmet_settings = {
    \  'javascript' : {
    \      'extends' : 'jsx,tsx'
    \  },
\}

""""""""""""""""""""""""""""""
"->@typescript
""""""""""""""""""""""""""""""
let g:typescript_indent_disable = 1

""""""""""""""""""""""""""""""
"->@indent guide
""""""""""""""""""""""""""""""
let g:intent_guildes_enable_on_vim_startup=1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

""""""""""""""""""""""""""""""
"->@prettier
""""""""""""""""""""""""""""""
nmap <Leader>py <Plug>(Prettier)
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier

""""""""""""""""""""""""""""""
"->@windowの移動 
""""""""""""""""""""""""""""""
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l

""""""""""""""""""""""""""""""
"->@linter check
""""""""""""""""""""""""""""""
let g:syntastic_javascript_checkers=['eslint']

""""""""""""""""""""""""""""""
"->@jsdoc
""""""""""""""""""""""""""""""
nmap <silent> <C-l> <Plug>(jsdoc)

""""""""""""""""""""""""""""""
"->@fugitive
""""""""""""""""""""""""""""""
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
vnoremap <leader>gb :Gblame<CR>
