call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

"""""""""""""""""""""""""
" ---> Theme
"""""""""""""""""""""""""
let g:onedark_termcolors=256
colorscheme onedark

let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_termcolors=256
colorscheme gruvbox

"""""""""""""""""""""""""
" ---> Airline
"""""""""""""""""""""""""
" let g:airline_theme='onedark'
let g:airline_theme='gruvbox'
" Tab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""
" ---> NerdTree
"""""""""""""""""""""""""
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.lo$', '\.dsp$', '\.m4$', '\.dep$', '\.mak$']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""
" ---> FzF
"""""""""""""""""""""""""
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

nnoremap <silent> <leader>p :Files<CR>
nnoremap <silent> <leader>- :Files <C-r>=expand("%:h")<CR>/<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>]  :Tags<CR>
nnoremap <silent> <leader>[ :BTags<CR>
nnoremap <leader>rg :Rg<Space>
nnoremap <leader>!  :Rg!<Space>
" nnoremap <silent> <leader>m :FZFMru<CR>
