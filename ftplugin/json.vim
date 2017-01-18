" JSON specific settings

if exists("g:json_config")
  finish
endif
let g:json_config = 1

" have vim-json fold based on syntax
setlocal foldmethod=syntax

" since JSON is indent heavy, using 2 as the indent level
setlocal softtabstop = 2
setlocal shiftwidth = 2
setlocal expandtab
