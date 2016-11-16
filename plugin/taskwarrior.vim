" Prevent the taskwarrior plugin from requiring user input when task is not
" present.

if !executable('task')
    let g:loaded_taskwarrior = 1
    finish
endif
