""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helper functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete trailing white-spaces
function! DeleteTrailingWS()
  %s/\s\+$//ge
endfunction

" Toggle ColorColumn on/off
function! ToggleColorColumn()
  if &colorcolumn == ''
    set colorcolumn=80
    hi ColorColumn ctermbg=4
  else
    set colorcolumn=
  endif
endfunction

" clang-format config
function! Formatonsave()
  let l:formatdiff = 1
  let l:lines="all"
  pyf ~/dotfiles/clang-format.py
endfunction
autocmd BufWritePre *.h,*.cc,*.cpp,*.c call Formatonsave()

" Turn on persistent undo, which means you can undo even
" when you close the buffers
" try
"   set undodir=~/.vim/temp/undodir
"   set undofile
" catch
" endtry

if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|NOTE\|HACK\|Note\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(INFO\)')
  endif
endif

" Make vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Loading indentation rules and plugins according to the filetype
if has("autocmd")
  filetype plugin indent on
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Default skeleton for C++ files
au BufNewFile *.cpp 0r ~/dotfiles/vimfiles/skeleton/skeleton.cpp
au BufNewFile *.c 0r ~/dotfiles/vimfiles/skeleton/skeleton.c
