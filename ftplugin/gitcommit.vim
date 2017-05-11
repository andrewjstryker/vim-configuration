" Git commit specific settings

" We want to run this everytime
"if exists("g:gitcommit_config")
"  finish
"endif
"let g:gitcommit_config = 1

" use the spell checker if possible
" TODO: generalize this code
if has("spell")
  setlocal spell spelllang=en_us
endif
