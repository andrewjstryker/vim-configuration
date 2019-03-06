" R specific settings

if exists("g:loaded_R_config")
  finish
endif
let gloaded_:R_config = 1

"-----------------------------------------------------------------------------"
"
" General R settings
"
"-----------------------------------------------------------------------------"

set shiftwidth=2
set softtabstop=2
set expandtab

"-----------------------------------------------------------------------------"
"
" Nvim-R plugin
"
"-----------------------------------------------------------------------------"

packadd Nvim-R

" convert ' _ ' to ' <- '
let R_assign = 3

let R_in_buffer = 1
