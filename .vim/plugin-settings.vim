"""
" Theme
"""
set termguicolors

let g:equinusocio_material_style = 'darker'
colorscheme  equinusocio_material

"""
" language client
"""
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'go': ['gopls'],
    \ 'c':  ['clangd'],
    \ }
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent>K <Plug>(lcn-hover)



"""
" vim-go
"""

" disable linting
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []
let g:go_jump_to_error = 0
let g:go_auto_sameids = 0
let g:go_code_completion_enabled = 0

" disable godoc K
let g:go_doc_keywordprg_enabled = 0

set completeopt-=preview

" writes the content of the file automatically if you call :make
set autowrite

let g:go_auto_sameids = 0
let g:go_fmt_command = "goimports"

" easy Quickfix browse with vim-go
"map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" build and run in vim-go
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" unmap default go def pop (ctrl-t cntrl-j)
let g:go_def_mapping_enabled = 0
let g:go_highlight_functions = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_function_calls = 1


"""
" NERDTree
"""
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd VimEnter * NERDTree | wincmd p


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
