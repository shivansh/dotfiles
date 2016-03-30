" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" A separate directory for the vim swap files---/tmp
" set swapfile
" set dir=~/tmp
set term=screen-256color

set autoindent smartindent
set ignorecase
set copyindent
set smartcase
set ignorecase
" Adding line numbers by default
set nu
set rnu
set sidescroll=1
set showcmd
set showmatch
set incsearch
set hlsearch
set autoread
set tabstop=2
set expandtab " insert space(governed by the value of tabstop) instead of tab
set shiftwidth=2 " size of an indent
set smarttab " make tab insert indents instead of tabs at the beginning of a line
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=n		" Enable mouse usage (all modes)
set wrap
set linebreak
set textwidth=0
set wrapmargin=0

let g:neocomplcache_enable_at_startup = 1
" Vim plug for plugin management
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'
" NERDcommenter mapping
nmap // <leader>ci

" Indentation
" Plug 'nathanaelkane/vim-indent-guides'
" C++ autocompletion support
" Plug 'OmniCppComplete'
" JavaScript syntax checking
Plug 'walm/jshint.vim'
" Autocompletion plugin
Plug 'Shougo/neocomplcache.vim'
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 1
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Plug 'Valloric/YouCompleteMe'
" Plug 'pangloss/vim-javascript'
" Color schemes
Plug 'flazz/vim-colorschemes'
" Plug 'tomasr/molokai'
" let g:molokai_original = 1
" let g:rehash256 = 1
" Syntax checking for vim
Plug 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Autocomplete matching braces
Plug 'Townk/vim-autoclose'
Plug 'scrooloose/nerdtree'
Plug 'edsono/vim-matchit'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'vim-scripts/camelcasemotion'
Plug 'ervandew/supertab'
Plug 'anyakichi/vim-surround'
Plug 'elzr/vim-json'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
au! BufRead,BufNewFile *.json set filetype=json
augroup json_autocmd
autocmd!
autocmd FileType json set autoindent
autocmd FileType json set formatoptions=tcq2l
autocmd FileType json set textwidth=78 shiftwidth=2
autocmd FileType json set softtabstop=2 tabstop=2
autocmd FileType json set noexpandtab
" autocmd vimenter * NERDTree
" autocmd FileType json set foldmethod=syntax
augroup END
Plug 'vim-scripts/HTML-AutoCloseTag'
call plug#end()

filetype plugin indent on

" mappings
map <C-n> :NERDTreeToggle<CR>

colorscheme molokai 
" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
