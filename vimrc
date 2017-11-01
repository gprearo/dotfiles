set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Disable Arrow keys in Escape mode
map <up> :echoerr "Stop being stupid"<CR> 
map <down> :echoerr "Stop being stupid"<CR> 
map <left> :echoerr "Stop being stupid"<CR> 
map <right> :echoerr "Stop being stupid"<CR> 

" Disable Arrow keys in Insert mode
imap <up> <esc>:echoerr "Stop being stupid"<CR>i
imap <down> <esc>:echoerr "Stop being stupid"<CR>i
imap <left> <esc>:echoerr "Stop being stupid"<CR>i
imap <right> <esc>:echoerr "Stop being stupid"<CR>i

" Always show the current position
set ruler

""""""""""""""""""""""""""""""
" Tab, indent and line number
""""""""""""""""""""""""""""""

" Be smart using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent

"Enable hybrid line number (relative and absolute)
set number
set relativenumber

""""""""""""""""""""""""""""""


filetype plugin on
syntax on

"Write on su files
cmap w!! w !sudo tee %

"Load power line fonts for airline status bar
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

"Set the position on spliting windows
set splitbelow
set splitright

"Set the swapfile directory
set directory=$HOME/.vim/swapfiles//


"Disble relative numbers when leaving buffer or losing focus
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained * set relativenumber
	autocmd BufLeave,FocusLost * set norelativenumber
augroup END

"Remove trailig from statusbar
let g:airline_detect_whitespace=0
let g:airline#extensions#whitespace#enabled=0
