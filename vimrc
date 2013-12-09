" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype staff happening
filetype off

if has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/vundle/
    call vundle#rc('$HOME/vimfiles/bundle')
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
endif

Bundle "gmarik/vundle"
Bundle "tComment"
Bundle "surround.vim"
Bundle "AutoComplPop"
Bundle "closetag.vim"
Bundle "TagHighlight"
Bundle "checksyntax"
Bundle "AutoFenc.vim"
Bundle "mattn/emmet-vim"
Bundle "The-NERD-tree"
Bundle "majutsushi/tagbar"
Bundle "bling/vim-airline"
Bundle "scrooloose/syntastic"
Bundle "airblade/vim-gitgutter"
Bundle "tpope/vim-fugitive"

Bundle "PHP-correct-Indenting"
Bundle "php.vim"
Bundle "PHP-dictionary"
Bundle "stephpy/vim-phpdoc"

Bundle "html5.vim"
Bundle "Markdown"
Bundle "xml.vim"
Bundle "JSON.vim"
Bundle "jQuery"
Bundle "sql.vim"

Bundle "molokai"
Bundle "trapd00r/neverland-vim-theme"
Bundle "chriskempson/base16-vim"

filetype indent on

" Turn on syntax highlighting
syntax on

set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you'r in
set showmode

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 's'rouce 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

" Set the search scan to wrap around the file
set wrapscan

" Set the forward slash to be the slash for note.
if !has('win32') && !has('win64')
    set shellslash
endif

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

" Number of spaces a <Tab> equal to 
set ts=4

" Number of spaces user for autoindent
set sw=4

" Use spaces instead of tabs
set expandtab

" Highlight current line
set cursorline
colo neverland
setlocal omnifunc=syntaxcomplete#Complete

" phpDoc keystrokes
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 
" @author tag value for phpDoc
let g:pdv_cfg_Author = "Ievgenii Dytyniuk <i.dytyniuk@gmail.com>"

function! AirlineInit()
    let g:airline_section_a = airline#section#create(['mode'])
    let g:airline_section_b = airline#section#create_left(['hunks','branch'])
    let g:airline_section_c = airline#section#create(['%f'])
    let g:airline_section_x = airline#section#create(['tagbar'])
    let g:airline_section_y = airline#section#create(['filetype'])
    let g:airline_section_z = airline#section#create(['ffenc'])
    let g:airline_section_warning = airline#section#create_right(['%P','%l:%c'])
endfunction
let g:airline_powerline_fonts = 1
autocmd VimEnter * call AirlineInit()
