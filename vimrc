" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

"set color scheme



" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
filetype plugin indent on

set encoding=utf-8

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set number
set tabstop=2
set shiftwidth=2
set expandtab
set foldmethod=indent
set hls
set tags=tags;/
set autochdir

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


set laststatus=2
set statusline=%F%=line:%l/%L,column:%c,%p%%
set ruler

set shortmess=Ot

if &diff
  syntax off
  colorscheme df 
else
  syntax on
  colorscheme cpp
  autocmd VimEnter * if argc() == 1 | NERDTree % | wincmd p | else | NERDTree | endif
  autocmd VimEnter * Tlist
  let Tlist_Auto_Open = 1
endif

highlight StatusLine cterm=bold ctermfg=yellow ctermbg=none


"NERDTree config below

let NERDChrismasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeShowBookmarks = 1
let NERDTreeShowFiles = 1
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 36
let NERDTreeCascadeOpenSingleChildDir = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeIgnore = ['^\..*[^gitignore]$', '\.vim$', '\.o$', '\.swp$', '\.swo$', '^\.git$', '^\.github$', '\.editorconfig$']
let NERDTreeChDirMode = 2
let NERDTreeDirArrows = 0

"NERDTree config above

"TagList config below
"let Tlist_Auto_Open = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Compact_Format = 1
let Tlist_Enable_Fold_Column = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 1
let Tlist_Use_Right_Window = 1

"TagList config above


