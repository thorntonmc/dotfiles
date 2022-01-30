set runtimepath+=~/.vim/

let need_to_install_plugins = 0
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    let need_to_install_plugins = 1
endif

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-scripts/The-NERD-tree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yunlingz/equinusocio-material.vim'
Plug 'airblade/vim-gitgutter'


" Language Specific Plugins {{{
" Markdown
Plug 'godlygeek/tabular' 
Plug 'plasticboy/vim-markdown'
" go
Plug 'fatih/vim-go'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" }}


call plug#end()


