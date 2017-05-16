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

set nu

""""""""""""""""""""""""""""""

set noswapfile

colorscheme elflord
