"""
" Theme
"""
set termguicolors

let g:equinusocio_material_style = 'darker'
colorscheme  equinusocio_material

"""
" ALE
""""
let g:ale_fixers = {
\    '*': ['remove_trailing_lines', 'trim_whitespace'],
\    'go': ['gofmt', 'gofumpt', 'goimports', 'golines'],
\    'json': ['jq'],
\    'sh': ['shfmt'],
\    'terraform': ['terraform']
\}

let g:ale_fix_on_save=1

" Shell
let g:ale_sh_shfmt_options = '-i 2 -ci'
let g:ale_sh_shellcheck_options = '-o all'

"""
" NERDTree
"""
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" NERDTree Remaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let NERDTreeShowHidden=1
" NERDTree setting defaults to work around http://github.com/scrooloose/nerdtree/issues/489
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGlyphReadOnly = "RO"

" fzf anchor to bottom
let g:fzf_layout = { 'down': '~40%' }
