" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" --- [ General ] --------------------------------------------------------------
set history=100
set ignorecase
set showcmd
set incsearch
set autoread   " Dynamically update log files
set autowrite  " Automatically save before commands like :next and :make
set mouse=a

" Use <.> whenever <leader> is encountered
let mapleader="."
let g:mapleader="."

" Fast saving (no need to search for ! now :P)
nmap <Leader>w :w!<CR>

" Ever got permission denied error while editing ?? :W comes handy now
command W w !sudo tee % > /dev/null

" --- [ Interface ] ------------------------------------------------------------
set wildmenu  " enable autocomplete on statusbar
set hlsearch
set nu
set rnu
set showmatch
set sidescroll=1
set ttyfast
set splitbelow
set signcolumn=yes

" --- [ Tabs and indents ] -----------------------------------------------------
set shiftwidth=4
set copyindent
set autoindent
set smartcase
set ignorecase
set wrap
set linebreak
set textwidth=0
set wrapmargin=0
set clipboard=unnamed
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" --- [ Swap and backup ] ------------------------------------------------------
set directory^=~/.vim/temp  " swapfile directory
" The ^= syntax for :set prepends the directory name to the head of the list,
" so Vim will check that directory first.

" --- [ Load configs ] ---------------------------------------------------------
source $HOME/dotfiles/vimfiles/plugins.vim
source $HOME/dotfiles/vimfiles/helpers.vim
source $HOME/dotfiles/vimfiles/indent.vim
source $HOME/dotfiles/vimfiles/interface.vim
source $HOME/dotfiles/vimfiles/mappings.vim
source $HOME/dotfiles/vimfiles/misc.vim
source $HOME/dotfiles/vimfiles/syntax.vim
