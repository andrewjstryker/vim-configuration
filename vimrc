"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
" File:  .vimrc
" Last Modified:  Mon Sep 19 20:20:30 PDT 2005
" Maintainer:  Andrew Stryker <axs@sdf.org>
" Description:  Initialization file for the Vim text editor.  This file
" contains sensitive settings and mappings for more effective text editting.
"
" Organization is as follows:
"	- Vim global environment options
"	- general mappings
"	- abbreviations
"	- templates
"	- color, syntax, and miscellaneous directives
"
" This file depends support files in the directory ~/.vim.  Files in
" ~/.vim/dict contain programming language words for keyword completion.
" Files in ~/.vim/scripts are Vim scripts.  Where appropriate, mappings to
" functions in these Vim scripts are done in this file.  Template (or
" skelaton) files are needed in ~/.vim/templates.  Additionally, this file
" depends on a list of words, usually found in /usr/share/dict/words.
"
" While the original motivation was for private use of the author, this file
" setup may prove useful for other.  To that end, options are concisely
" commented and keyword abbreviations are not used.  That said, if you do not
" understand something, you should look it up.  If you are still stumped, try
" consulting either comp.editors or vim@vim.org.  I will be happy to answer
" questions specifically addressing this setup.  Suggestions are very welcome.
"
" TODO Construct table of mappings for current mode.
"
" Disclaimer:  This file is distributed free of charge and there is no
" warranty expressed or implied.  You may use it as you like provided that you
" hold the maintainer blameless for ill effects.  You may distribute this file
" provided that this is done free of charge and that all of the above text is
" retained.
"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
"
"	Pathogen to manage Vim packages
"
"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

filetype off " Pathogen needs to run before plugin indent on

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
"execute pathogen#helptags() " generate helptags for everything in 'runtimepath'

filetype plugin indent on

"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
"
"	Vim options
"
"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
set nocompatible	" use Vim settings, not standard Vi (must be first)
set autoindent		" automatically indent
set autowrite		" when changing buffers, automatically save first
set backspace=indent	" allow backspacing over indentation,
set backspace+=eol	" end of line,
set backspace+=start	" and start of insertion
set backup		" keep a backup (filename~) file
set backupdir=./.backup	" use ./.backup directory if present,
set backupdir+=.	" otherwise use current directory
set cmdheight=2		" make command height be 2 lines
set comments=b:#	" use standard shell comments as defaults instead
set complete+=k		" use dictionary for  and  word completions
set complete+=s		" use thesaurus for  and  word completions
set cpoptions-=a	" do not let the :read file be the alterate buffer
set cpoptions-=A	" do not let the :write file be the alterate buffer
set cpoptions-=C	" do not concatenate sourced line beginning with a \
set cpoptions-=c	" begin searches one character from current position
set cpoptions+=J	" sentences have two spaces that follow the ., !, or ?
set cpoptions+=j	" insert two spaces after join when lines ends with .
if has("unix") && filereadable("/usr/share/dict/words")
  set dictionary+=/usr/share/dict/words	" FHS word list location
endif
set cursorline          " highlight current line
set display+=lastline   " show as much of the last line as possible
set noexrc              " do not read .vimrc and friends in current directory
set foldlevelstart=99	" begin editting files with all folds open
set formatoptions-=t	" do not autowrap all text automatically
set formatoptions+=c	" autowrap in comments, inserting leader
set formatoptions-=r	" do not continue comments after <Enter>
set formatoptions-=o	" do not start comments with 'O' or 'o'
set formatoptions+=q	" allow formatting with "gq"
set formatoptions-=n	" do not recognize numbered lists
set formatoptions-=2	" do not indent using second paragraph line
set formatoptions-=v	" do not use vi-compatible auto-wrapping
set formatoptions+=b	" wrap only when there is a blank at or before break
set formatoptions-=l	" do not break long lines
set formatoptions-=m	" do not break after multi-byte character above 255
set formatoptions+=1	" try not to break a line after a one-letter word
if has("win32") && executable("grep")
    set grepprg=grep	" use grep instead of findstr where possible
endif
set guioptions-=T       " no need to have a toolbar
set guioptions-=m       " I'm not fond of the menu either
set history=50		" keep 50 lines of command line history
set hlsearch		" show search results
set incsearch		" show matching search patterns while typing
set modelines=15        " lines checked for set commands (big for timstamp)
set nolinebreak		" do not break words when wrapping text
set nolist		" do not show listchars by default
set listchars=tab:��	" list characters (�� will not work on all terminals)
set listchars+=trail:�,extends:�
set mouse=		" disable mouse in Normal, Visual, Insert, and Command
set mousehide		" hide the mouse pointer while typing (gui only)
set mousemodel=extend	" right button extends selection, middle pastes
set nrformats-=octal    " don't use octal numbers with 
set printoptions+=syntax:off,paper:letter	" options for hardcopy
set ruler		" show the cursor position all the time
set selectmode=mouse	" use mouse to start text selection
set shiftround		" round to the nearest shiftwidth ("<" and ">")
set shellslash          " use forward slash to expand file name
set showbreak=<	        " mark the beginning of wrapped lines
set showcmd		" show command in status line as it is typed
set showmatch		" briefly jump to matching bracket
set switchbuf=useopen   " jump to first window with specified buffer
set switchbuf+=split    " split the current window before loading a buffer
set nosmartindent	" set indentation on filetypes instead
set nostartofline	" try to keep cursor in same column when scrolling
set suffixes=.a,.aux	" initially ignore these extensions on file name
set suffixes+=.bak,.bz2	" completions (i_)
set suffixes+=.class,.dvi,.gz,.idx,.info,.lj,.loa,.lof,.lol,.lot,.o,.pdf
set suffixes+=.ps,.pyc,.pyo,.so,.swp,.tar,.toc,.zip,.Z,.xz,~
set textwidth=78	" wrap text at column 78
set ttyfast		" improves smoothness of redrawing (on fast terminals)
set tags=tags,../tags	" default locations of tag file
set notildeop		" tilde does not act as an operator
set wildignore+=*.a	" initially ignore these patterns when doing 
set wildignore+=*.aux,*.bak,*.idx,*.info,*.lj,*.lof,*.loa,*.lot,*.o
set wildignore+=*.pyc,*.pyo,*.so,*.toc,*~
set nowrap		" do not screen-wrap long lines
set viminfo='40,\"50,h	" read/write a .viminfo file, store up to 40 file
                        " marks and 50 lines of registers, and start without
                        " highlighting
set visualbell		" screen flash instead of beeps

"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
"
" Options when in a GUI
"
"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
"
if has("gui_running")
  set columns=90        " space for numbers and gutters
  set mouse=a           " enable mouse in all modes
  set lines=50	        " try to get extra lines
endif

"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
"
" Options for wide terminals
"
"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

if &columns > 80
  set number            " show line numbers on the right hand margin
  set relativenumber    " make the numbers relative to the cursor line
endif

"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
"
"	plugins and scripts
"
"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

" timstamp plugin
let g:timstamp_1='\( Last \([Cc]hanged\|[Mm]odified\):  \=\).*$!' .
            \ '\1%a %b %d %T %Z %Y'
let g:timstamp_2='\( [Tt]ime[- ]\?[Ss]tamp:  \=\).*$!' .
            \ '\1<#f %a %Y/%m/%d %H:%M:%S #u #h>'
let g:timstamp_3='\(Last [Cc]hange:  \=\).*$!\1%Y %B %d'
let g:timstamp_4='\( Last \([Cc]hanged\|[Mm]odified\):\).*$!' .
            \ '\1  %a %b %d %T %Z %Y'
let g:timstamp_5='\(Last [Cc]hange:\).*$!\1  %Y %B %d'
let g:timstamp_6='\(@version [[:digit:]]\.[[:digit:]]\).*$!\1  %Y %B %d'

" DrawIt
let g:DrChipTopLvlMenu = "Plugins."

" access to man pages with :Man
if has("unix")
    source $VIMRUNTIME/ftplugin/man.vim
endif

" need a home for this:
let g:ScreenImpl = 'Tmux'

let vimrplugin_assign = 0
let vimrplugin_only_in_tmux = 1
let vimrplugin_vsplit = 1

"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
"
"	Color Scheme
"
"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

" color and GUI terminal settings
if &t_Co > 1 || has("gui_running")
    syntax on
    " prefer solarized colorscheme
    " assume that terminal emulator uses the solarized palette
    try
        if has("gui_running")
            set background=light
            " TODO: need exception catching and fallbacks
            set guifont=Source\ Code\ Pro\ for\ Powerline\ 10
        else
            set background=dark
            if &term == "xterm"
                " otherwise, this will look horrible
                set t_Co=16
            endif
        endif
        colorscheme solarized
    catch /^Vim\%((\a\+)\)\=:E185/
        colorscheme default " standard colorscheme is a safe choice
    endtry
endif

" begin editing at last cursor position, if possible (must be after plugins)
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ execute "normal '\"" |
                \ endif
endif

"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
"
" Local settings under version control
"
"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

"if exists(runtime/vimrc-local.vim)
"    runtime vimrc-local.vim
"endif

"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
"
" Security settings
"
"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
set secure		" do not allow ":autocmd" in the current directory's
                        " .vimrc; prevents Trojan Horses; must be last

" vim: sw=4 et
