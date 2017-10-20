" brew install neovim
" brew install the_silver_searcher
" add this file to '.config/nvim/init.vim'
" run PlugInstal


let mapleader = ","
let g:ackprg = 'ag --nogroup --nocolor --column'

set termguicolors
set number

imap jk <Esc>
imap kj <Esc>
vmap jk <Esc>
vmap kj <Esc>

nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>a :Ag<cr>
" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" Switch between the last two files
nnoremap <leader><leader> <c-^>


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'rakr/vim-two-firewatch'

call plug#end()


set background=dark " or light if you prefer the light version
let g:two_firewatch_italics=1
colo two-firewatch

autocmd vimenter * NERDTree
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
