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
set autowrite	   " Automatically save before commands like :next and :make
" set hidden		 " Hide buffers when they are abandoned
set mouse=a

" Use <.> whenever <leader> is encountered
let mapleader="."
let g:mapleader="."

" Fast saving (no need to search for ! now :P)
nmap <Leader>w :w!<CR>

" Ever got permission denied error while editing ??
" :W comes handy now
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
set splitbelow
" set term=screen-256color


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Tabs, indents and cases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2
set softtabstop=2
set shiftwidth=2     " size of an indent
set expandtab        " insert space(governed by the value of tabstop) instead of tab
set smarttab         " make tab insert indents instead of tabs at the beginning of a line
set copyindent
set autoindent
set smartindent
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
" >> Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'derekwyatt/vim-scala'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/syntastic'
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'anyakichi/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'xolox/vim-misc'
Plug 'terryma/vim-multiple-cursors'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/neocomplcache.vim'
Plug 'mhinz/vim-startify'
Plug 'flazz/vim-colorschemes'
Plug 'townk/vim-autoclose'
Plug 'vim-scripts/HTML-AutoCloseTag'
Plug 'edsono/vim-matchit'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'vim-scripts/camelcasemotion'
Plug 'davidhalter/jedi-vim'
Plug 'bronson/vim-trailing-whitespace'   " Show trailing whitespace
Plug 'kshenoy/vim-signature'             " Show markers
Plug 'taglist.vim'                       " Source code browser

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yggdroot/indentline'
Plug 'ervandew/supertab'
Plug 'sirver/ultisnips'
Plug 'majutsushi/tagbar'                 " Show tags ordered by scope

" Plug 'rip-rip/clang_complete'          " C/C++ completion
" Plug 'walm/jshint.vim'
" Plug 'elzr/vim-json'
" Plug 'burnettk/vim-angular'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
" Plug 'tpope/vim-markdown'
" Plug 'Valloric/YouCompleteMe'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'ensime/ensime-vim'
" Plug 'klen/python-mode'
" Plug 'lokaltog/vim-powerline'
" Plug 'megaannum/vimside'
" Plug 'dscleaver/sbt-quickfix'
" Plug 'xolox/vim-notes'
" Plug 'tomasr/molokai'
" let g:molokai_original = 1
" let g:rehash256 = 1
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Syntax checking and auto-complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1        " Aggregate errors from all checkers

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType json set foldmethod=syntax

autocmd QuickFixCmdPost [^l]* nested cwindow

" Typescript
let g:syntastic_typescript_checks=['tsc']
" Make the compiler search for the tsconfig.json file starting in
" the current directory and continuing up the parent directory chain.
let g:syntastic_typescript_tsc_fname = ''
" let g:syntastic_typescript_checkers = []

" autocmd FileType typescript :set makeprg=tsc
" let g:typescript_compiler_binary = 'tsc'
" let g:typescript_compiler_options = ''

" Javascript
let g:javascript_plugin_jsdoc = 1

" C/C++
" let g:clang_library_path='/usr/lib/llvm-3.4/lib'
" let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Indentation and Indentlines
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_auto_colors=1
let g:indent_guides_start_level=4
let g:indent_guides_guide_size=0
let g:indentLine_enabled = 0
au! BufRead,BufNewFile *.json set filetype=json
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set noexpandtab
  filetype plugin indent on
augroup END

au BufRead,BufNewFile *.pkt set filetype=packetdrill


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Autocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 1
" Enable omni completion.


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> NerdTree configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd vimenter * NERDTree << uncomment to toggle automatically

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

au VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
au VimEnter * call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
au VimEnter * call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
au VimEnter * call NERDTreeHighlightFile('rb', 'Red', 'none', '#ffa500', '#151515')
au VimEnter * call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" Close vim if nerdtree is the only open tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerdtree mappings
map <F2> :NERDTreeToggle<CR> :NERDTreeMirror<CR>
"map <C-S-l> :tabNext<CR>
"map <C-S-h> :tabp<CR>
"map <C-S-n> :tabnew<CR>

" The awesome fzf
map <F4> :FZF<CR>

" NERDcommenter mapping
nmap // <leader>ci
" by default <leader> is mapped to \

" Proves to be very productive
map ; :

" Automatic indentation
map <F5> mzgg=G`z :call DeleteTrailingWS() <CR>

" Tagbar
nmap <F4> :TagbarToggle<CR>

nmap <C-i> :IndentLinesToggle<CR>
nmap <C-l> :SyntasticToggleMode<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <C-Left> b TODO >> fix key-bindings in normal mode
" map <C-Right> w

" Bash like keys
cmap <C-a> <Home>
cmap <C-e> <End>


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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Colors and fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting by default.
syntax enable
" Colorscheme
set background=dark
colorscheme peaksea
" Favourites > desert256v2 Candypaper 256-jungle molokai jellybeans


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Statusline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline_theme='jellybeans'
let g:airline_left_sep=''
let g:airline_right_sep=''

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" Always show statusline
set laststatus=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helper functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete trailing white-spaces on save
func! DeleteTrailingWS()
  %s/\s\+$//ge
endfunc

au VimLeave * DeleteTrailingWS()

" Turn on persistent undo, which means you can undo even
" when you close the buffers
" try
"   set undodir=~/.vim/temp/undodir
"   set undofile
" catch
" endtry

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
