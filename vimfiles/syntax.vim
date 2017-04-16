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
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType json set foldmethod=syntax

autocmd QuickFixCmdPost [^l]* nested cwindow

" Typescript
" let g:syntastic_typescript_checks=['tsc', 'tslint']
" Make the compiler search for the tsconfig.json file starting in
" the current directory and continuing up the parent directory chain.
" let g:syntastic_typescript_tsc_fname = ''
" let g:syntastic_typescript_checkers = []

" autocmd FileType typescript :set makeprg=tsc
" let g:typescript_compiler_binary = 'tsc'
" let g:typescript_compiler_options = ''

" Javascript
let g:javascript_plugin_jsdoc = 1

" C/C++
" let g:clang_library_path='/usr/lib/llvm-3.4/lib'
" let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

" Assembly
" let g:syntastic_asm_compiler = 'mipsel-linux-gcc'
" let g:syntastic_asm_checkers = []

let g:ycm_show_diagnostics_ui = 0
