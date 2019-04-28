" vim-pandoc only makes sense if pandoc is in the search path

if !executable("pandoc")
  let g:pandoc#loaded = 1
  finish
endif

" vim-pandoc will complain if using Vim version < 7.4 or Vim does not include
" Python scripting support. The plugin will still work though some functions
" will absent. The code below surpresses the warning message.

if v:version < 704 || !has("python")
  let g:pandoc#modules#warn_disabled = 0
endif

" Fenced codeblock langurages
let g:pandoc#syntax#codeblocks#embeds#langs = ["sh", "bash=sh", "python"]
