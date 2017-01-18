"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
"
"	general mappings
"
"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

if exists('g:mappings_loaded')
  finish
endif
let g:mappings_loaded = 1

" scroll by screen line
nnoremap j gj
nnoremap k gk

" yank to end-of-line is a more intuitive and consistent behavior for Y
nnoremap Y y$

" cw, by default, is dei which is the same as ce
nnoremap cw dwi
nnoremap cW dWi

" return in normal mode turns off highlighting
nnoremap <silent> <return> :nohlsearch<CR>

" CNTL-Z escapes to shell
nnoremap <C-Z> :shell<CR>
inoremap <C-Z> <C-O>:shell<CR>

" function keys

" F1 is already mapped help

" write current buffer
nnoremap <F2> :write<CR>
inoremap <F2> <C-O>:write<CR>

" print buffer using a2ps if possible
if executable("a2ps")
    "get two pages per sheet, no highlighting
    nnoremap <F4> :!a2ps --highlight-level=none %<CR>
elseif has("printer")
    nnoremap <F4> :ha<CR>
endif

" make
"nmap <F5>

" paste mode
noremap <F3> :call TogglePaste()<CR>
inoremap <silent> <F3> <C-O>:set paste!<CR>
set pastetoggle=<F3>

function! TogglePaste()
    if &paste
        echo "Paste mode off"
    else
        echo "Paste mode on"
    endif
    set paste!
endfunction

