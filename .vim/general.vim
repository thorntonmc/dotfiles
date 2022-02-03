" use vim settings, rather than vi settings
" must be first, because it changes other options as a side effect

set termguicolors
set nocompatible

" maintain undo history between sessions
set undofile
set undodir=~/.vim/undo
set noswapfile

" show line numbers
set number
" ruler
set ruler
" file name tab completion
set wildmode=longest,list,full
set wildmenu
set showcmd	"shows the normal mode command before it gets executed
set showmatch " show matching brackets/parenthesis

" encoding/format
set encoding=utf-8
set fileformats=unix,dos

" searching
set nohlsearch " highlight search
set incsearch " incremental search
set ignorecase " case insensitive search
set smartcase " ignore case if no capitals

set hidden " keep buffers alive

set scrolloff=8 " scroll before end

set gdefault " the /g flag on :s substitutions by default

set backspace=indent,eol,start " make backspace behave in a sane manner

set title " let Vim set term title

set mouse=a " enable mouse

" disable startup message
set shortmess+=I

" syntax highlighting and colors
syntax on
filetype plugin indent on

" stop unnecessary rendering
set lazyredraw

" time Vim waits after you stop typing before trigger plugin
set updatetime=100

" no line wrapping
set nowrap

" no folding
set foldlevel=99
set foldminlines=99

" wrap long lines
set nowrap 

" use indents of 4 spaces
set shiftwidth=4

" tabs are spaces, not tabs
set expandtab

" an indentation every four columns
set tabstop=4

" let backspace delete indent
set softtabstop=4

" show trailing spaces
set list
set listchars=tab:→\ ,nbsp:␣,trail:·,extends:⟩,precedes:⟨

" remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

" make git commit open in insert mode
autocmd FileType gitcommit exec 'au VimEnter * startinsert'

" make ; works like : for commands. lazy shifting
"nnoremap ; :

" enable file type detection and do language-dependent indenting
if has("autocmd")
  filetype on
  filetype indent on
  filetype plugin on
endif

" always display status line
set laststatus=2

" Map kj to esc
inoremap kj <Esc>
cnoremap kj <Esc>

" Move lines in V-line mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" fuzzy finder binds
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>

" writes the content of the file automatically if you call :make
set autowrite

filetype plugin indent on

syntax on
set t_Co=256

set background=dark
