" Tab completion configuration

if exists('g:completion_config_loaded')
  finish
endif

let g:completion_config_loaded = 1

" 
" TODO: Test for YCM server, use SuperTab if not found
" for now, just disable
let g:loaded_supertab = 1

let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_global_extra_conf.py'
