" If the current line is a comment, on pressing Enter the next line will also
" be marked as a comment.
" TODO: vim-go seems to be overwriting local buffer configs.
autocmd VimEnter * set formatoptions+=cro

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> NerdCommenter configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
