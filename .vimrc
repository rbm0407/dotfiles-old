set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
syntax on
set updatetime=100

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
