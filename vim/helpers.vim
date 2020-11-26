" --- [ Helper functions ] -----------------------------------------------------
" Toggle ColorColumn on/off
function! ToggleColorColumn()
  if &colorcolumn == ''
    set colorcolumn=80
    hi ColorColumn ctermbg=4
  else
    set colorcolumn=
  endif
endfunction

" clang-format config for C-family files
function! FormatOnSave()
  let l:formatdiff = 1
  let l:lines="all"
  pyf $HOME/dotfiles/languages/clang-format.py
endfunction

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
au BufNewFile *.cpp 0r ~/dotfiles/vim/skeleton/skeleton.cpp
au BufNewFile *.c 0r ~/dotfiles/vim/skeleton/skeleton.c
