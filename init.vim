" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the number of lines vim has to remember
set history=100
set ignorecase
set showcmd
set incsearch
set autoread     " Dynamically update log files
set autowrite	 " Automatically save before commands like :next and :make
" set hidden	 " Hide buffers when they are abandoned
set mouse=a
" set colorcolumn=80

" Use <.> whenever <leader> is encountered
let mapleader="."
let g:mapleader="."

" Fast saving (no need to search for ! now :P)
nmap <Leader>w :w!<CR>

" Ever got permission denied error while editing ?? :W comes handy now
command W w !sudo tee % > /dev/null

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The awesome autocomplete window which you see on the statusbar :)
set wildmenu
set hlsearch
set nu
set rnu
set showmatch
set sidescroll=1
set ttyfast
set splitbelow
" set term=screen-256color

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Tabs, indents and cases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set tabstop=2
" set softtabstop=2
" set shiftwidth=4 " size of an indent
" set expandtab    " insert space (governed by tabstop) instead of tab
" set noexpandtab
" set smarttab     " make tab insert indents instead of tabs
set copyindent
set autoindent
" set smartindent
set smartcase
set ignorecase
set wrap
set linebreak
set textwidth=0
set wrapmargin=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Swapfiles and backup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A separate directory for the vim swap files
set directory^=~/.vim/temp
" The ^= syntax for :set prepends the directory name to the head of the list,
" so Vim will check that directory first.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Miscellaneous
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/dotfiles/vimfiles/plugins.vim        " Plugins
source $HOME/dotfiles/vimfiles/syntax.vim         " Syntax and auto-completion
source $HOME/dotfiles/vimfiles/indent.vim         " Indentation
source $HOME/dotfiles/vimfiles/autocompletion.vim " Autocomplete
source $HOME/dotfiles/vimfiles/nerdtree.vim       " NerdTree configs
source $HOME/dotfiles/vimfiles/comment.vim        " Comments
source $HOME/dotfiles/vimfiles/mappings.vim       " Mappings
source $HOME/dotfiles/vimfiles/navigation.vim     " Navigation
source $HOME/dotfiles/vimfiles/colors.vim         " Colors and fonts
source $HOME/dotfiles/vimfiles/statusline.vim     " Statusline
source $HOME/dotfiles/vimfiles/helpers.vim        " Helper functions
source $HOME/dotfiles/vimfiles/markdown.vim       " Vim markdown
