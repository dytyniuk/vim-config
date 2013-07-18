" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype staff happening
filetype on
filetype plugin on
filetype indent on

" Turn on syntax highlighting
syntax on

set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you'r in
set showmode

" Enable enhanced command-line completion, Presumes you have compiled
" with +wildmenu, See :help 'wildmenu'
set wildmenu

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 's'rouce 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

" Set the search scan to wrap around the file
set wrapscan

" Set the forward slash to be the slash for note.
set shellslash

" Make command line two lines high
set ch=2

" Set visual bell
set vb

" Set the status line
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

" tell VIM to always put a status line in, even if there is only one windows
set laststatus=2

" Hide mouse pointer while typing
set mousehide

set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver24-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait125-blinkoff150-blinkon175

set guioptions=ac

" When the pages starts to scroll keep 8 lines from the top and 8 lines from
" the bottom
set scrolloff=8

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" Set textwidth to be 80 chars
"set textwidth=80

" Enable search highlighting
"set hlsearch

" Automaticaly read the file that has changed on disk
set autoread

set synmaxcol=2048

" Show line numbers 
set number

" Set color scheme
color lucius

" Number of spaces a <Tab> equal to 
set ts=4

" Number of spaces user for autoindent
set sw=4

" Use spaces instead of tabs
"set expandtab

" Set automatic code folding base on indentation
"set fdm=indent

" Highlight current line
set cursorline
