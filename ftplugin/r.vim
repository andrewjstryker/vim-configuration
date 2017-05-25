" R specific settings

if exists("g:R_config")
  finish
endif
let g:R_config = 1

" convert ' _ ' to ' <- '
let R_assign = 3

"let R_args=['--no-save']

" create a toggle function
"let R_app = "sparkR"
"let R_path = "/opt/spark/bin"

set sw=2
set st=2
set et

let R_in_buffer = 0
let R_tmux_split = 1
