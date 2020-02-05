" --- [ Static checking ] ------------------------------------------------------
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" let g:syntastic_aggregate_errors = 1  " Aggregate errors from all checkers
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-l> :SyntasticToggleMode<CR>

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']}

" Enable omni completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType json set foldmethod=syntax

autocmd QuickFixCmdPost [^l]* nested cwindow

" Javascript
let g:javascript_plugin_jsdoc = 1
" NOTE: jshint should be globally available (npm install -g jshint)
let g:syntastic_javascript_checkers = ['jshint']

" C/C++
" let g:clang_library_path='/usr/lib/llvm-3.4/lib'
" let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

" Assembly
" let g:syntastic_asm_compiler = 'mipsel-linux-gcc'
" let g:syntastic_asm_checkers = []

" Display the quickfix window for on-the-fly errors.
let g:ycm_show_diagnostics_ui = 1

" Vim-go
let g:go_fmt_autosave = 0
" Ref: github.com/fatih/vim-go/wiki/FAQ-Troubleshooting#vim-becomes-sluggish-while-editing-go-files
let g:go_highlight_structs = 0
let g:go_highlight_interfaces = 0
let g:go_highlight_operators = 0
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

" --- [ Autocomplete ] ---------------------------------------------------------
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_semantic_triggers = {'haskell' : ['.']}

" Python support for YouCompleteMe
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
