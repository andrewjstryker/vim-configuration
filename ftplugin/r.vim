"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
"
" Configuration for R files
"
"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

if exists("g:loaded_R_config")
  finish
endif
let gloaded_R_config = 1

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

" disable converting ' _ ' to ' <- '
let R_assign = 0

" fenced languages
let g:markdown_fenced_languages = ['r', 'python', 'sql']
let g:rmd_fenced_languages = ['r', 'python', 'sql']

" shortcuts
iabbrev << <-
iabbrev >> %>%
iabbrev >>> %>%

" Map "Send line" and "Send selection" to space
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

" Using syntax folding
let r_syntax_folding = 1

"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
