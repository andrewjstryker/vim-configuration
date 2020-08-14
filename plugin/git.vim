" git plugin configuration
"
if exists('g:git_config_loaded')
  finish
endif

let g:git_config_loaded = 1

" Don't load plugins that require git if we don't have git

if !executable("git")
  let g:loaded_gitgutter = 1 " git gutter complains if git is absent
  let g:loaded_fugitive = 1
  finish
endif

" The interaction of gitgutter and Solarized breaks something.
" This is a known issue... the Solarized project is inactive.
highlight! link SignColumn LineNr
