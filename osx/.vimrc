set t_Co=256
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype on
filetype plugin indent on

autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType python map <buffer> <F5> :w<cr>:!python %<cr>

" Key mappings
" Map CTRL-s as save, independent of mode
inoremap <c-s> <esc>:update<cr>
nnoremap <c-s> :update<cr>

" Timestamp mapping
noremap <leader>s a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
noremap <leader>d a<C-R>=strftime("%Y-%m-%d")<CR><Esc>

" write as root
cmap w!! w !sudo tee > /dev/null %

set mouse=a
set number		" line numbers
set ai                  " auto indenting
set cursorline
set si
set wrap
set history=100         " keep 100 lines of history
syntax on               " syntax highlighting
set incsearch
set autoindent

set laststatus=2
set foldmethod=indent
set foldlevel=99

" no error bells
set visualbell t_vb=

set hlsearch

highlight ColorColumn guibg=lightyellow
highlight ColorColumn ctermbg=lightyellow
set colorcolumn=80

" default tab and indent behavior
set expandtab
set tabstop=4
set shiftwidth=4

" set a larger font
set guifont=Monaco:h12

" set background light/dark
set bg=dark

" set colorscheme
colorscheme solarized

" statusline configuration
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set statusline+=%{fugitive#statusline()}
hi StatusLine ctermbg=white ctermfg=blue

" smart indent on/off
set nosmartindent
