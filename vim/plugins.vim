call plug#begin('~/.vim/plugged')

Plug 'anyakichi/vim-surround'
Plug 'bling/vim-airline'
Plug 'danmar/cppcheck'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'flazz/vim-colorschemes'
Plug 'kien/ctrlp.vim'
Plug 'kshenoy/vim-signature'  " markers
Plug 'ntpeters/vim-better-whitespace'
Plug 'plasticboy/vim-markdown'
Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['javascript'] }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'rhysd/vim-clang-format'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'vim-scripts/timestamp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'ycm-core/YouCompleteMe'
Plug 'yggdroot/indentline'

call plug#end()
