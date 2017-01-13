" JSON specific settings

if exists("g:json_local")
  finish
endif
let g:json_local = 1

" have vim-json fold based on syntax
setlocal foldmethod=syntax
