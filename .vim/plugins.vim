set runtimepath+=~/.vim/

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-scripts/The-NERD-tree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yunlingz/equinusocio-material.vim'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'


call plug#end()


