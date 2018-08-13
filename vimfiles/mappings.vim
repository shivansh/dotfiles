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

" TODO buffer bindings
" map <C-S-l> :tabNext<CR>
" map <C-S-h> :tabp<CR>
" map <C-S-n> :tabnew<CR>
map <C-W> <C-W><C-W>

" Colorcolumn for demarcating 80 characters per line limit
nnoremap <C-u> :call ToggleColorColumn()<CR>

" Bash like key-bindings
nmap <C-A> <Home>
imap <C-A> <Home>
nmap <C-E> <End>
imap <C-E> <End>
nmap <C-Left> b
nmap <C-Right> w

" Avoid using arrow keys in insert mode
imap <A-l> <Right>
imap <A-h> <Left>
imap <A-j> <Down>
imap <A-k> <Up>
imap <A-Space> <Space>
