" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" --- [ General ] --------------------------------------------------------------
set history=100
set ignorecase
set incsearch
set autoread   " Dynamically update log files
set autowrite  " Automatically save before commands like :next and :make
set mouse=a
set directory^=~/.vim/temp  " swap directory
" NOTE: The ^= syntax for :set prepends the directory name to the head of the
" list, so Vim will check that directory first.

let mapleader="."  " use '.' instead of leader (usually \)

" FIXME, ref: github.com/neovim/neovim/issues/8217#issuecomment-402152307
" command W w !sudo tee % > /dev/null

" --- [ Load configs ] ---------------------------------------------------------
source $HOME/dotfiles/vim/plugins.vim
source $HOME/dotfiles/vim/format.vim
source $HOME/dotfiles/vim/helpers.vim
source $HOME/dotfiles/vim/interface.vim
source $HOME/dotfiles/vim/mappings.vim
source $HOME/dotfiles/vim/misc.vim
source $HOME/dotfiles/vim/syntax.vim
