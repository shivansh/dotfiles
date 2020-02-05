" --- [ Colors and fonts ] -----------------------------------------------------
syntax enable  " Enable syntax highlighting by default
set background=dark
colorscheme peaksea
" Favourites > desert256v2 Candypaper 256-jungle molokai jellybeans

highlight ExtraWhitespace ctermbg=13
highlight SignColumn ctermbg=16  " gutter

" --- [ Statusline ] -----------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_skip_empty_sections = 1  " Disable empty section
let g:airline_section_warning = 0      " Disable warning section
let g:airline_section_error = 0        " Disable error section

set laststatus=2
set noshowmode  " Disable default statusline
