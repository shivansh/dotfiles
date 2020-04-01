" --- [ Comments ] -------------------------------------------------------------
let g:NERDCompactSexyComs = 1
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" --- [ Markdown ] -------------------------------------------------------------
set conceallevel=2  " Conceal italics, bold, links etc.
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_folding_disabled = 1

" --- [ Code navigation ] ------------------------------------------------------
map <C-j> :YcmCompleter GoTo<CR>
map <C-k> <C-O>

" --- [ Ctrlp.vim ] ------------------------------------------------------------
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
