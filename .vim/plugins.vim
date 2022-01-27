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
Plug 'projekt0n/github-nvim-theme'
Plug 'sainnhe/everforest'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'yunlingz/equinusocio-material.vim'


" Language Specific Plugins {{{
" Markdown
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular' 
Plug 'plasticboy/vim-markdown'
" }}


let g:everforest_background = 'soft'
let g:everforest_ui_contrast = 'high'
colorscheme everforest


call plug#end()


