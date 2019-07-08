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

" need a home for this:
let g:ScreenImpl = 'Tmux'

let vimrplugin_assign = 0
let vimrplugin_only_in_tmux = 1
let vimrplugin_vsplit = 1

" convert ' _ ' to ' <- '
let R_assign = 3
let R_in_buffer = 1

"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
