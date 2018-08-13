"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Source code navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.pkt set filetype=packetdrill

" Cscope configuration
source ~/.vim/plugged/cscope_maps.vim
nmap <A-l> <C-\>s

" CTags configuration
set tags=./tags;$HOME     " Look for tags traversing upwards until $HOME
noremap <A-j> <C-]>
noremap <A-k> <C-t>

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
