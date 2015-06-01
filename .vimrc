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

Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'fatih/vim-go'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/syntastic'
" Plugin 'mxw/vim-jsx' " Breaks syntax highlighting for js
Bundle "wookiehangover/jshint.vim"
Plugin 'marijnh/tern_for_vim'
Bundle 'heartsentwined/vim-emblem'
Bundle 'heartsentwined/vim-ember-script'
Plugin 'othree/javascript-libraries-syntax'
Plugin 'elixir-lang/vim-elixir'

call vundle#end()            " required
syntax enable
filetype plugin indent on    " required

" https://github.com/thoughtbot/dotfiles/blob/master/vimrc
set backspace=2 " Backspace deletes like most programs in insert mode
set history=50
set ruler " show the cursor position all the time

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·


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
if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>
endif
