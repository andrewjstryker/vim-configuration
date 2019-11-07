" Markdown configuration
" TODO: handle `]c` mapping conflict with the git-gutter plugin

if exists("b:loaded_markdown_config")
  finish
endif
let b:loaded_markdown_config = 1

" use the spell checker if possible
" TODO: generalize this code
if has("spell")
  setlocal spell spelllang=en_us
endif

" vim-markdown configuration
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_autowrite = 1

" Set formating options

" comments, from a vim
setlocal formatoptions+=t  " auto-wrap text
setlocal formatoptions+=c  " auto-wrap comments
setlocal formatoptions-=wa

setlocal formatoptions-=a  " no automatic formating
endfor

" wrap at 80 columns
setlocal textwidth=80

setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab
