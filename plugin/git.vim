" Don't load plugins that require git if we don't have git

if !executable("git")
  let g:loaded_gitgutter = 1 " git gutter complains if git is absent
  let g:loaded_fugitive = 1
  finish
endif
