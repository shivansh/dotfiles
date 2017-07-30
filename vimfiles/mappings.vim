"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Nerdtree mappings
map <F2> :NERDTreeToggle<CR> :NERDTreeMirror<CR>

" The awesome fzf
map <F4> :FZF<CR>

" NERDcommenter mapping
nmap // <leader>ci
" by default <leader> is mapped to \

" Proves to be very productive
map ; :

" Automatic indentation
map <F5> mzgg=G`z :call DeleteTrailingWS() <CR>

" Tagbar
nmap  <F4> :TagbarToggle<CR>
nmap <C-i> :IndentLinesToggle<CR>
nmap <C-l> :SyntasticToggleMode<CR>

" TODO buffer bindings
" map <C-S-l> :tabNext<CR>
" map <C-S-h> :tabp<CR>
" map <C-S-n> :tabnew<CR>
map <C-W> <C-W><C-W>
