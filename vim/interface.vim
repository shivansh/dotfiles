" --- [ Interface ] ------------------------------------------------------------
set wildmenu  " enable autocomplete on statusbar
set hlsearch
set ignorecase
set smartcase
set nu
set rnu
set showmatch
set splitbelow
set signcolumn=yes
set formatoptions+=cro

" --- [ Colors ] ---------------------------------------------------------------
syntax enable  " Enable syntax highlighting by default
set background=dark
colorscheme peaksea
" Favourites > desert256v2 Candypaper 256-jungle molokai jellybeans

hi ExtraWhitespace ctermbg=13
hi SignColumn ctermbg=16  " gutter

" --- [ Statusline ] -----------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_skip_empty_sections = 1  " Disable empty section
let g:airline_section_warning = 0      " Disable warning section
let g:airline_section_error = 0        " Disable error section

set laststatus=2
set noshowmode  " Disable default statusline

" --- [ Cursorline ] -----------------------------------------------------------
au VimEnter * set cursorline!
au InsertEnter,InsertLeave * set cursorline!  " hide in insert mode

" --- [ Indentline ] -----------------------------------------------------------
let g:indent_guides_auto_colors=1
let g:indent_guides_start_level=4
let g:indent_guides_guide_size=0
let g:indentLine_enabled = 0
