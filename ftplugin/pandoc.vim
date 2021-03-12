" Pandoc configuration

if exists("b:loaded_pandoc_config")
  finish
endif
let b:loaded_pandoc_config = 1

" use the spell checker if possible
" TODO: generalize this code
if has("spell")
  setlocal spell spelllang=en_us
endif

" Set formating options
setlocal formatoptions-=t  " no auto-wrap text, interferes with fenced code
setlocal formatoptions+=c  " auto-wrap comments
setlocal formatoptions-=q  " do not allow comment formatting with "gq"
setlocal formatoptions-=w  " do not use trailing whitespace as paragraph marker
setlocal formatoptions-=a  " no automatic formating

" TODO: move this to generic configuration
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab

let g:pandoc#filetypes#handled = ["pandoc", "rst", "markdow"]
let g:pandoc#filetypes#pandoc_markdown = 0
" let g:pandoc#modules#enabled
" let g:pandoc#modules#disabled
let g:pandoc#formatting#mode = "h"
let g:pandoc#formatting#textwidth = 79
" let g:pandoc#formatting#smart_autoformat_on_cursormoved = 1
" let g:pandoc#formatting#equalprg
" let g:pandoc#formatting#extra_equalprg
" let g:pandoc#command#use_message_buffers
" let g:pandoc#command#latex_engine
" let b:pandoc_command_latex_engine
" let g:pandoc#command#path
" let g:pandoc#command#custom_open
