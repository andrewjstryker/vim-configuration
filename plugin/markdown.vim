" Configuration for vim-markdown

" Note: vim-markdown requires tabular.vim to load first. Since Vim uses
" alphabetical ordering to sort files, tabular.vim **should** load before
" vim-markdown

if exists('g:markdown_config_loaded')
  finish
endif
let g:markdown_config_loaded = 1

let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
