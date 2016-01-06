set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line

"Plugin 'tpope/vim-rails'
"Plugin 'tpope/vim-fugitive'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
 Plugin 'mxw/vim-jsx' " Breaks syntax highlighting for js
"Bundle 'wookiehangover/jshint.vim'
Plugin 'marijnh/tern_for_vim'
"Bundle 'heartsentwined/vim-emblem'
"Bundle 'heartsentwined/vim-ember-script'
"Plugin 'othree/javascript-libraries-syntax'
""Plugin 'elixir-lang/vim-elixir'
Plugin 'tpope/vim-endwise'

call vundle#end()            " required
syntax enable
filetype plugin indent on    " required

" https://github.com/thoughtbot/dotfiles/blob/master/vimrc
set backspace=2 " Backspace deletes like most programs in insert mode
set history=50
set ruler " show the cursor position all the time

" Softtabs, 2 spaces by default
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

autocmd FileType ruby set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType go setlocal tabstop=8
autocmd FileType javascript set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType html set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType css set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType scss set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType erb set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType haml set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType php set list listchars=tab:»·,trail:·,nbsp:·
au BufEnter,BufNew *.es6 set syntax=javascript

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1


" Color scheme
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
set columns=100

" vim-javascript
let javascript_enable_domhtmlcss=1

" React
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['jsxhint']
"let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'
"let g:syntastic_ruby_checkers = ['rubocop', 'mri']
"

"fzf
set rtp+=/usr/local/Cellar/fzf/HEAD

" Keep 5 lines of context when scrolling
set scrolloff=5

" Use bash instead of sh
set shell=/bin/bash

set tags=.git/tags

" Set default encoding to UTF-8.
set encoding=utf-8 fileencodings=

" The first setting sets up 2-space tabs, the second tells vi to use 2 spaces when text is indented (auto or with the manual indent adjustmenters), and the third tells vi not to auto-replace spaces with tab characters.
set tabstop=2
set shiftwidth=2
set expandtab

" Automatic indentation
set autoindent
set smarttab

if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>
endif
