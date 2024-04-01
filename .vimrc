syntax enable 						" enable syntax processing
set t_Co=256 						" request terminal use 256 colors
set tabstop=3 						" number of visual spaces per tab
set softtabstop=3 				" number of visual spaces in tab when editing
set shiftwidth=3              " number of spaces with << and >>
set shiftround                " round indent to multiple of shiftwidth
set expandtab 						" tabs are spaces
set autoindent                " apply the indentation of the current line to the next
set nowrap                    " lines longer than the width of window will scroll not wrap
set number                    " show line numbers
set ruler                     " show the line and column number of cursor position
set showmatch                 " highlight matching [{()}]
set matchpairs+=<:>           " add <> to matching character pairs
set title                     " set title of window to filename [+=-] (path) - VIM
set showtabline=1             " show tabline if there are >= 2 tab pages
set laststatus=2              " turn on status line always
set cursorline                " highlight screen line of cursor
set ignorecase                " ignore case in search patterns
set smartcase                 " override ignore case if pattern contains uppercase chars
set cmdheight=1               " only use one screen line for command line
set backspace=indent,eol,start " allow backspacing over autoindent, line breaks, start of indent
set colorcolumn=100           " highlight column at 100 char line width
set hlsearch                  " highlight search matches
set incsearch                 " search as characters are entered
set showmode                  " put message on last line in insert/replace/visual mode
set wildmenu                  " display command line's tab complete options as a menu
set confirm                   " display a confirmation dialog when closing an unsaved file
set history=1000              "remember more commands and search history

"unbind arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" disable arrow keys in insert mode
imap <up> <nop>
imap <down> <nop>
map <left> <nop>
map <right> <nop>

" set mapleader for more commands
let mapleader = ","

" split config
set splitright
map <leader>s :vsplit<cr>

" fast saving
nmap <leader>w :w!<cr>

" change splits with ctrl + hjkl
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" vim-test mappings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" enable filetype detection and filetype plugins
filetype plugin on
filetype indent on

" vim-plug plugin install
call plug#begin('~/.vim/plugged')

Plug 'nordtheme/vim'
Plug 'vim-test/vim-test'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf'

call plug#end()

" activate nord colorscheme
colorscheme nord
set background=dark

" activate nord colorscheme for lightline
let g:lightline = {
   \ 'colorscheme': 'nord',
   \ }

finish
