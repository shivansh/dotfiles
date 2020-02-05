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
" TODO figure out a better way of creating a mapping for all files except
" C-family files.
map <F5> mzgg=G`z :call DeleteTrailingWS()<CR>
autocmd FileType c,cpp map <buffer> <F5> :call FormatOnSave()<CR>
autocmd FileType python map <buffer> <F5> :%!yapf --style "google"<CR>

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
inoremap <C-l> <Right>
inoremap <C-n> <Left>  " FIXME: C-h is mapped to delete by default in OSX
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-Space> <Space>

" Compile current C++ buffer
autocmd FileType cpp map <F9> :<C-U>!g++ -O2 -DLOCAL -std=c++11 -Wall -Wextra -Wno-unused-result -static %:r.cpp<CR>

" Copy current buffer to system clipboard
map <F8> gg"+yG<CR>
