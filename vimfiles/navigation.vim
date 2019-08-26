"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Source code navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.pkt set filetype=packetdrill

" Cscope configuration
source ~/.vim/plugged/cscope_maps.vim
nmap <A-l> <C-\>s

" CTags configuration
set tags=./tags;$HOME     " Look for tags traversing upwards until $HOME
map <C-j> <C-]>
map <C-k> <C-t>
autocmd FileType go map <buffer> <C-j> :GoDef<CR>
autocmd FileType go map <buffer> <C-k> :GoDefPop<CR>
