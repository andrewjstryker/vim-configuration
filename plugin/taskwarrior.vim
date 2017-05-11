" Prevent the taskwarrior plugin from requiring user input when task is not
" present.

" Don't run this test more than once
if exists("g:loaded_taskwarrior")
    finish
endif

if !executable('task')
    let g:loaded_taskwarrior = 1
    finish
endif
