"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Indentation, Indentline and Cursorline
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

" Display cursorline in normal mode
au VimEnter * set cursorline!
au InsertEnter,InsertLeave * set cursorline!

" if has('nvim')
"   let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" endif

" vim-hindent configs
let g:hindent_on_save = 0
let g:hindent_indent_size = 4
let g:hindent_indent_size = 4
