" Markdown configuration
" TODO: handle `]c` mapping conflict with the git-gutter plugin

if exists("b:loaded_markdown_config")
  finish
endif
let b:loaded_markdown_config = 1

" use the spell checker if possible
" TODO: generalize this code
if has("spell")
  setlocal spell spelllang=en_us
endif

" markdown doesn't directly support comments
setlocal formatoptions-=c

" wrap at 80 columns
setlocal textwidth=80
setlocal formatoptions+=t
setlocal formatoptions-=wa

setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab
