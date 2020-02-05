" --- [ Comments ] -------------------------------------------------------------
" If the current line is a comment, on pressing Enter the next line will also
" be marked as a comment.
" TODO: vim-go seems to be overwriting local buffer configs.
autocmd VimEnter * set formatoptions+=cro

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" --- [ Markdown ] -------------------------------------------------------------
" Conceal italics, bold etc.
set conceallevel=2

let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_folding_disabled = 1

" --- [ Code navigation ] ------------------------------------------------------
map <C-j> :YcmCompleter GoTo<CR>
map <C-k> <C-O>
