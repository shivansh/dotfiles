"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/syntastic'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'anyakichi/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'flazz/vim-colorschemes'
Plug 'townk/vim-autoclose'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'davidhalter/jedi-vim'
Plug 'ntpeters/vim-better-whitespace'    " Show trailing whitespace
Plug 'kshenoy/vim-signature'             " Show markers
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yggdroot/indentline'
Plug 'kien/ctrlp.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-sleuth'
Plug 'ervandew/supertab'
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neovimhaskell/haskell-vim'
Plug 'sbdchd/neoformat'
Plug 'danmar/cppcheck'
Plug 'rhysd/vim-clang-format'
Plug 'vim-scripts/timestamp.vim'

" Plug 'derekwyatt/vim-scala'
" Plug 'eagletmt/ghcmod-vim'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'eagletmt/neco-ghc'
" Plug 'xolox/vim-easytags'
" Plug 'taglist.vim'                       " Source code browser
" Plug 'easymotion/vim-easymotion'
" Plug 'majutsushi/tagbar'                 " Show tags ordered by scope
" Plug 'vim-scripts/HTML-AutoCloseTag'
" Plug 'xolox/vim-misc'
" Plug 'fredkschott/covim'

call plug#end()
