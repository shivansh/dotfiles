" --- [ Tabs and indents ] -----------------------------------------------------
set shiftwidth=2
set tabstop=2
set expandtab
set copyindent
set autoindent
set wrap
set linebreak
set textwidth=0
set wrapmargin=0
set clipboard=unnamed

let g:neoformat_enabled_haskell = ['brittany']

" --- [ Auto indent ] ----------------------------------------------------------
map <F5> mzgg=G`zmz:call DeleteTrailingWS()<CR>
au FileType c,cpp map <buffer> <F5> :call FormatOnSave()<CR>
au FileType python map <buffer> <F5> :%! yapf --style "google"<CR>
au FileType javascript map <buffer> <F5> :Prettier<CR>
au FileType sh map <buffer> <F5> :%! shfmt -i 2 -ci<CR>
au FileType hs map <buffer> <F5> :Neoformat<CR>
