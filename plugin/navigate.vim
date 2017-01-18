if exists('g:navigate_config_loaded')
  finish
endif

let g:navigate_config_loaded = 1

" Cursor key navigation plugin
let g:navigate_state = 1
nmap <silent> <Tab> <Plug>NavigateCycle
nmap <silent> <S-Tab> <Plug>ReverseNavigateCycle
