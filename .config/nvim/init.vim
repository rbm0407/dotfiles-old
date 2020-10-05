set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'junegunn/fzf'
Plugin 'kevinoid/vim-jsonc'
Plugin 'neoclide/coc.nvim'
Plugin 'mattn/emmet-vim'
Plugin 'mechatroner/rainbow_csv'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ------------------ My edits ------------------ "

" Copied from vim default:
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid, when inside an event handler
" (happens when dropping a file on gvim) and for a commit message (it's
" likely a different one than last time).
autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif

set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

set updatetime=100

set cursorline
hi CursorLine cterm=NONE ctermbg=17

highlight clear SignColumn
highlight SignColumn ctermfg=darkgrey
highlight GitGutterAdd ctermfg=darkgreen
highlight GitGutterChange ctermfg=darkyellow
highlight GitGutterDelete ctermfg=darkred
highlight GitGutterChangeDelete ctermfg=darkyellow

syntax on

" run file
nnoremap <F9> :!clear && %:p<Enter>

" use <ctrl>+p to open fzf
nnoremap <silent> <C-p> :FZF -m<cr>

" use gd to go to definition
nmap <silent> gd <Plug>(coc-definition)

" use <Leader>w to quick save
noremap <Leader>w :update<CR>

" use <Leader>l to quick clear highlight text
noremap <Leader>l :nohl<CR>

" use <Leader>t to create new tab
noremap <Leader>t :tabnew<CR>

" use <Leader>s to create new horizontal split
noremap <Leader>s :sp<CR>

" use <Leader>v to create new vertical split
noremap <Leader>v :vsp<CR>
