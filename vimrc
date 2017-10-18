" vim Configuration
" Aaron Mavrinac <mavrinac@gmail.com>

set nocompatible

" file type detection and syntax highlighting
filetype on
filetype plugin on
syntax on

" basic settings
set showcmd
set showmode
set title
set hidden
set ruler
set viminfo='20,\"50
set history=50
set bs=2

" search
set hlsearch
nnoremap <F3> :noh<CR><CR>

" encoding
set encoding=utf-8 
set fileencoding=utf-8 

" indentation
set expandtab
set autoindent
set tabstop=8
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
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal g'\"" |
\ endif

" pathogen
call pathogen#infect()

" ctags
set tags=tags;/

" taglist
let Tlist_Auto_Open=1
let Tlist_Exit_OnlyWindow=1
nnoremap <silent> <F8> :TlistToggle<CR>

" vcscommand
cabbrev vlog VCSLog
cabbrev vdiff VCSDiff
cabbrev vblame VCSAnnotate
