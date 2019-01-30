set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let mapleader = "\<Space>"

nmap 0 ^
nmap <leader>v :vsplit

call plug#begin()
Plug 'jpo/vim-railscasts-theme'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1
call plug#end()

set ttyfast
syntax enable

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set backspace=2
set history=50
set ruler

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

set list listchars=trail:·,nbsp:·
autocmd FileType ruby set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType python set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType go setlocal tabstop=8
autocmd FileType javascript set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType html set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType css set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType scss set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType erb set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType haml set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType php set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType ex set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType exs set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType java set nolist tabstop=4 shiftwidth=4 listchars=trail:·,nbsp:·
au BufEnter,BufNew *.es6 set syntax=javascript
au BufEnter,BufNew *.hbs set syntax=html
au BufEnter,BufNew *.fixtures set syntax=sql
au BufEnter,BufNew *.seeds set syntax=sql
au BufEnter,BufNew *.pg set syntax=sql

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

colorscheme railscasts
highlight NonText guibg=#060606
highlight Folded guibg=#0A0A0A guifg=#9090D0
"autocmd VimEnter * GitGutterLineHighlightsEnable
autocmd VimEnter * highlight clear SignColumn
autocmd VimEnter * highlight GitGutterAdd guibg=#2B2B2B guifg=green
autocmd VimEnter * highlight GitGutterChange guibg=#2B2B2B guifg=yellow
autocmd VimEnter * highlight GitGutterDelete guibg=#2B2B2B guifg=red
autocmd VimEnter * highlight GitGutterChangeDelete guibg=#2B2B2B guifg=red

" Line numbers
set number

" vim-javascript
let javascript_enable_domhtmlcss=1

" React
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
set scrolloff=5

" Use zsh
set shell=/bin/zsh

set tags=.git/tags

" Set default encoding to UTF-8.
set encoding=utf-8 fileencodings=

" Automatic indentation
set autoindent
set smarttab

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guifont=DejaVu\ Sans\ Mono\ 9

set guifont=DejaVu\ Sans\ Mono:h14

" disable bell on macvim
autocmd! GUIEnter * set vb t_vb=

set mouse=a
