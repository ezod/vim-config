" vim Configuration
" Aaron Mavrinac <mavrinac@gmail.com>

set nocompatible
syntax on
filetype plugin indent on

" UI
set number
set ruler
set showcmd
set title

" search
set hlsearch
set ignorecase
set smartcase
nnoremap <F3> :noh<CR><CR>

" encoding
set encoding=utf-8 
set fileencoding=utf-8 

" indentation
set expandtab
set autoindent
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" language-specific 
autocmd FileType python set cc=80
autocmd FileType c set shiftwidth=2
autocmd FileType c set softtabstop=2
autocmd FileType c set cc=120
autocmd FileType cpp set shiftwidth=2
autocmd FileType cpp set softtabstop=2
autocmd FileType cpp set cc=120

" reopen file at last cursor position
augroup remember_cursor_position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal! g`\"" |
        \ endif
augroup END
