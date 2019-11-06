if exists('g:solarized_config_loaded')
  finish
endif

let g:solarized_config_loaded = 1

" force the toggle dark/light background mapping
call togglebg#map("<F5>")
