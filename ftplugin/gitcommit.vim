" Git commit specific settings

if exists("g:gitcommit_config")
  finish
endif
let g:gitcommit_config = 1

" use the spell checker if possible
" TODO: generalize this code
setlocal spell spell_lang=en_us
