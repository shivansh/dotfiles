map <F2> :NERDTreeToggle<CR> :NERDTreeMirror<CR>
map <F4> :FZF<CR>
nmap // <leader>ci  " nerdcommenter (by default <leader> is mapped to \)
map ; :
nmap  <F4> :TagbarToggle<CR>
map <C-W> <C-W><C-W>
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
