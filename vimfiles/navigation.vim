"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bash like keys
nmap <C-A> <Home>
imap <C-A> <Home>
nmap <C-E> <End>
imap <C-E> <End>
nmap <C-Left> b
nmap <C-Right> w
" Avoid arrow keys in insert mode
imap <A-l> <Right>
imap <A-h> <Left>
imap <A-j> <Down>
imap <A-k> <Up>

au BufRead,BufNewFile *.pkt set filetype=packetdrill

" Cscope configuration
source ~/.vim/plugged/cscope_maps.vim
nmap <A-l> <C-\>s

" CTags configuration
set tags=./tags;$HOME     " Look for tags traversing upwards until $HOME
nmap <A-j> <C-]>
nmap <A-k> <C-t>

" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
" set compatible
