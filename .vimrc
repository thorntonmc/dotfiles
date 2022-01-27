let configs = [
\ "general",
\ "ui",
\ "commands",
\ "plugins",
\ "plugin-settings",
\]

for file in configs
    let x = expand("~/.vim/".file.".vim")
    if filereadable(x)
        execute 'source' x
    endif
endfor

" writes the content of the file automatically if you call :make
set autowrite

" easy Quickfix browse with vim-go
"map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" build and run in vim-go
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)


" file browser
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
"let NERDTreeMinimalUI = 1
let g:nerdtree_open = 0

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

" go def tab
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au filetype go inoremap <buffer> . .<C-x><C-o>

" unmap default go def pop (ctrl-t cntrl-j)
let g:go_def_mapping_enabled = 0
let g:go_highlight_functions = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_function_calls = 1

set background=dark
