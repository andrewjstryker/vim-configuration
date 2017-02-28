" R specific settings

if exists("g:R_config")
  finish
endif
let g:R_config = 1

" convert ' _ ' to ' <- '
let R_assign = 3
