"vim setting
"->@leadermap <Space>
let mapleader="\<Space>"
let g:mapleader="\<Space>"

"->@encoding
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

"->@base setting
set t_Co=256 "color 256
set nocompatible 
filetype plugin indent on
syntax on
"syntax enable
set backspace=indent,eol,start
"set clipboard+=unnamed,autoselect
"set clipboard+=unnamed
set clipboard+=unnamedplus
set ttimeoutlen=10 "キーコードシーケンスの時間を短くする

"->@schema & color
"hi Comment ctermfg=blue "コメントのカラーを青に変える 
hi Normal ctermfg=none

"->@No backup
set nobackup
set noswapfile
set nowb

"->@search
set incsearch
set ignorecase "検索時に大小文字の区別を無視する
set hlsearch "検索時にハイライト

"->@base settings
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
"set cursorline "カーソルがある行を表示
set nocursorline
set norelativenumber
hi clear CursorLine
set laststatus=2 "ステータスラインを表示
highlight LineNr ctermfg=15 "ナンバーのハイライト 
set scrolloff=5

"->@Indent and Tab 
set autoindent
"set noautoindent "インデントさせない
set smartindent
set tabstop=2
set softtabstop=4
set shiftwidth=4
"set expandtab

"->@Language Filetype
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType go setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType json setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType ejs setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd FileType erb setlocal tabstop=2 shiftwidth=2 softtabstop=4 textwidth=120
autocmd Filetype vue setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd BufRead,BufNewFile *.ts,*.tsx,*.ts set filetype=typescript
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

"->@plugin 
if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
		call dein#begin('~/.cache/dein')
		call dein#add('Shougo/dein.vim')
		call dein#add('Shougo/deoplete.nvim')
		call dein#add('Shougo/neosnippet')
		call dein#add('Shougo/neosnippet-snippets')
		call dein#add('HerringtonDarkholme/yats.vim')

		if has('python3')
				call dein#add('Shougo/denite.nvim')
		endif
		call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
		call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
		call dein#end()
		call dein#save_state()
endif

if dein#check_install()
		call dein#install()
endif

filetype plugin indent on
syntax enable

"->@colorscheme
"color nova-vim 
color gruvbox
set background=dark

"""""""""""""""""""""""
"->@keys
"""""""""""""""""""""""
"fast save
map <leader>w :w!<cr>

""""""""""""""""""""""""""""""
"->@インサートモード時に行頭、行末に移動
""""""""""""""""""""""""""""""
inoremap <C-l> <Esc>$a
inoremap <C-a> <Esc>^a

"xをyankさせない
nnoremap x "_x
nnoremap D "_D"

"leader leaderでヴィジュアルモード
nmap <Leader><Leader> V

""""""""""""""""""""""""""""""
"->@windowの移動 
""""""""""""""""""""""""""""""
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l

"""""""""""""""""""""""
"->@nerdtree
"""""""""""""""""""""""
let NERDChristmasTree=0
let NERDTreeWinSize=20
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
"key map ctrl + a
map <C-a> :NERDTreeToggle<CR>
"map <leader>w :NERDTreeToggle<CR>
noremap <Leader>n :NERDTreeToggle<cr>
"noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeIgnore=['\~$', '\.git$', '.DS_Store', 'node_modules']

"""""""""""""""""""""""""""""""""""""
"->@close tag
""""""""""""""""""""""""""""""""""""
"set ts=2 sw=2 et
let g:indent_guildes_start_level = 2
inoremap { {}<Left> 
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap "<Enter> ""<Left><CR><ESC><S-o>
inoremap '<Enter> ''<Left><CR><ESC><S-o>
inoremap `<Enter> ``<Left><CR><ESC><S-o>

"javascript
set conceallevel=1
let g:jsx_ext_required = 0 

""""""""""""""""""""""""""""""
"->@vim-fugitive
""""""""""""""""""""""""""""""
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gc :Gcommit<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gb :Gblame<CR>

""""""""""""""""""""""""""""""
"->@ctrlp
""""""""""""""""""""""""""""""
"leader + oで新しいファイル
nnoremap <Leader>o :CtrlP<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

""""""""""""""""""""""""""""""
"->@"alvan/vim-closetag'
""""""""""""""""""""""""""""""
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*tsx,*ts'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx,*.ts'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

"javascript
set conceallevel=1
let g:jsx_ext_required = 0 

""""""""""""""""""""""""""""""
"->@airline
""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

""""""""""""""""""""""""""""""
"->@easy motion
""""""""""""""""""""""""""""""
let g:EasyMotion_leader_key = '<Leader>'

""""""""""""""""""""""""""""""
"->@Denite
""""""""""""""""""""""""""""""
nnoremap [denite] <Nop>
nmap <silent> [denite]f :<C-u>Denite file<CR>
nmap <silent> [denite]b :<C-u>Denite buffer<CR>

set conceallevel=0
let g:vim_json_syntax_conceal=0


""""""""""""""""""""""""""""""
"->@syntastic
""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

"shift + で右端に移動
nnoremap <S-h> ^
nnoremap <S-l> $

" Tab Shortcuts
nnoremap tk :tabfirst<CR>
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tj :tablast<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :CtrlSpaceTabLabel<CR>
nnoremap td :tabclose<CR>

let g:deoplete#enable_at_startup = 1

"deoplete
noremap <expr><CR>   pumvisible() ? "\<C-n>" . deoplete#close_popup()  : "<CR>"

inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  deoplete#close_popup()
inoremap <expr><C-e>  deoplete#cancel_popup()"
