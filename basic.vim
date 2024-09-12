""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ---> General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Sets how many lines of history VIM has to remember
set history=500

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Turn persistent undo on
" means that you can undo even when you close a buffer/VIM
try
    set undodir=~/.vim/undodir
    set undofile
catch
endtry

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ---> VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set compatibility to Vim only.
set nocompatible

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" For plug-ins to load correctly.
filetype plugin indent on

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

" Turn off modelines
set modelines=0

" Fixes common backspace problems
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Display options
set showmode
set showcmd

" Show line numbers
set number
set relativenumber

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ---> Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Encoding
set encoding=utf-8

" Turn on syntax highlighting.
syntax on

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Color Scheme
set cursorline

set colorcolumn=80


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ---> Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically wrap text that extends beyond the screen length.
set wrap

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=80
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set smartindent


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ---> Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ---> Other Stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim's auto indentation feature does not work properly with text copied from outisde of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

