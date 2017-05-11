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
