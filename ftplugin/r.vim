" R specific settings

if exists("g:loaded_R_config")
  finish
endif
let gloaded_:R_config = 1

"-----------------------------------------------------------------------------"
"
" Nvim-R plugin
"
"-----------------------------------------------------------------------------"

packadd Nvim-R

" convert ' _ ' to ' <- '
let R_assign = 3

"let R_args=['--no-save']

set sw=2
set st=2
set et

let R_in_buffer = 1
