" Markdown commit specific settings

if exists("b:markdown_config")
  finish
endif
let b:markdown_config = 1

" use the spell checker if possible
" TODO: generalize this code
if has("spell")
  setlocal spell spelllang=en_us
endif

" from this style guide: https://github.com/carwin/markdown-styleguide

" wrap at 80 columns
set textwidth=80
set formatoptions+=t

" 4 spaces for indent leves
set shiftwidth=2
set softtabstop=2
set expandtab
