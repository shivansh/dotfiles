"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> Autocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_semantic_triggers = {'haskell' : ['.']}

" Python support for YouCompleteMe
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
