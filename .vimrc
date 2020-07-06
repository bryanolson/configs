" Comments in Vimscript start with a `"`.

set nocompatible

" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" Shows line numbers relative to cursor
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

set backspace=indent,eol,start

" Hide buffer
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. 
set mouse+=a

" Arrow key reminders for learning HJKL nav
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>

" ---- Minimal configuration:
set smartindent   " Do smart autoindenting when starting a new line
set shiftwidth=4  " Set number of spaces per auto indentation
set expandtab     " When using <Tab>, put spaces instead of a <tab> character

" ---- Good to have for consistency
" set tabstop=4   " Number of spaces that a <Tab> in the file counts for
" set smarttab    " At <Tab> at beginning line inserts spaces set in shiftwidth

" Permanent undo
set undodir=~/.vimdid
set undofile

" Add vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug addons
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
