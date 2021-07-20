syntax enable				" enable syntax processing
set t_Co=256				" request terminal use 256 colors
set tabstop=3				" number of visual spaces per tab
set softtabstop=3			" number of spaces in tab when editing
set shiftwidth=3			" number of spaces with << and >>
set expandtab				" tabs are spaces
set autoindent
set smartindent
set nowrap
set number				   " show line numbers
set wildmenu				" visual autocomplete for command name
set showmatch				" highlight matching [{()}]
set incsearch 				" search as characters are entered
set hlsearch				" highlight search matches
set colorcolumn=80			" highlight column at 80 char line width
set cursorline				" highlight current line
set history=10000			" remember more commands and search history
set laststatus=2			" turn on status line 2=always
set ruler
set title
set showmode
set showcmd
set ignorecase smartcase		" make searches case sensitive only if they contain upper case
set cmdheight=1
set switchbuf=useopen
set showtabline=2			" always show tab bar at the top
set backspace=indent,eol,start		" allow backspacing over autoindent, line breaks, start of insert

" unbind arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" disable arrow keys in insert mode 
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" change splits with ctrl + hjkl
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"config 
let mapleader = ","
set splitright
map <leader>s :vsplit<cr>
map <leader>f :call fzf#run({'sink': 'e'})<cr>

nnoremap <CR> :noh<CR><CR>

" nerd tree config
nnoremap <leader>n :NERDTreeFocus<CR>
autocmd VimEnter * NERDTree | wincmd p

"colors
:color nord
:set bg=dark

filetype plugin on
syntax on


call plug#begin(expand('~/.vim/plugged'))
Plug 'janko-m/vim-test'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'arcticicestudio/nord-vim'
Plug 'ervandew/supertab'
Plug 'yggdroot/indentline'
Plug 'junegunn/fzf'
Plug 'preservim/nerdtree'

call plug#end()

let g:lightline = {
   \ 'colorscheme': 'nord',
   \ }

finish
