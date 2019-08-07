"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Syntax checking and auto-complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1        " Aggregate errors from all checkers
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-l> :SyntasticToggleMode<CR>

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']}

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

" Vim-go
let g:go_fmt_command = "goimports"
" Ref: github.com/fatih/vim-go/wiki/FAQ-Troubleshooting#vim-becomes-sluggish-while-editing-go-files
let g:go_highlight_structs = 0
let g:go_highlight_interfaces = 0
let g:go_highlight_operators = 0
