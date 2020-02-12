" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
au FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']}

" Display the quickfix window for on-the-fly errors.
let g:ycm_show_diagnostics_ui = 1
au QuickFixCmdPost [^l]* nested cwindow

" Vim-go
let g:go_fmt_autosave = 0
" Ref: github.com/fatih/vim-go/wiki/FAQ-Troubleshooting#vim-becomes-sluggish-while-editing-go-files
let g:go_highlight_structs = 0
let g:go_highlight_interfaces = 0
let g:go_highlight_operators = 0
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

" Syntastic
nnoremap <C-l> :SyntasticToggleMode<CR>

" --- [ Autocomplete ] ---------------------------------------------------------
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_semantic_triggers = {'haskell' : ['.']}

let g:ycm_confirm_extra_conf = 0  " load config file by default
let g:python3_host_prog = '/usr/local/bin/python3'  " python support for YCM
