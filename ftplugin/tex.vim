" TeX configuration

if exists("b:loaded_tex_config")
  finish
endif
let b:loaded_tex_config = 1

" use the spell checker if possible
" TODO: generalize this code
if has("spell")
  setlocal spell spelllang=en_us
endif

" wrap at 80 columns
setlocal textwidth=80
setlocal formatoptions+=t
setlocal formatoptions-=wa

setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab
