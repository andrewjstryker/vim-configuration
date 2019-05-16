" Markdown commit specific settings

if exists("b:loaded_markdown_config")
  finish
endif
let b:loaded_markdown_config = 1

" use the spell checker if possible
" TODO: generalize this code
if has("spell")
  setlocal spell spelllang=en_us
endif

" wrap at 80 columns
set textwidth=80
set formatoptions+=t
set formatoptions-=wa

set shiftwidth=2
set softtabstop=2
set expandtab
