"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Source code navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.pkt set filetype=packetdrill

" Cscope configuration
source ~/.vim/plugged/cscope_maps.vim
nmap <A-l> <C-\>s

" CTags configuration
set tags=./tags;$HOME     " Look for tags traversing upwards until $HOME

map <C-j> :YcmCompleter GoTo<CR>
map <C-k> <C-O>
