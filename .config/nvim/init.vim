call plug#begin(stdpath('data') . '/plugged')

Plug 'tpope/vim-fugitive'  " git porcelain
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }  " nvim in the browser!
Plug 'hynek/vim-python-pep8-indent'  " python indent formatting per pep8 (and sane)
Plug 'altercation/vim-colors-solarized'  " solarized color theme

call plug#end()

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" configure netrw to be a tree and clean
let g:netrw_liststyle = 0
let g:netrw_banner = 0

" make the mouse do stuff like allow split resizing
set mouse=a

" color theme
set background=light
colorscheme solarized

" misc
set number  " show line numbers
set encoding=utf-8

" set a more reasonable path
set path=.,,,**

" Useful vim commands
"
" :%!cmd -> replaces the current buffer with the output of the command (works
" in visual mode as well)
"
" :write !cmd -> write the current buffer to the stdin of an external command.
"
" ctrl-f on vim commandline. See :help c_ctrl-f
"
" :%!python -mjson.tool -> format json
