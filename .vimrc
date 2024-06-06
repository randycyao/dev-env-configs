syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
if has("autocmd")
  filetype indent on
endif
if !exists("syntax_on")
  syntax on
endif
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd        " Show (partial) command in status line.
set showmatch        " Show matching brackets.
set ignorecase        " Do case insensitive matching
set smartcase        " Do smart case matching
set incsearch        " Incremental search
"set autowrite        " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set hlsearch
set mouse=a        " Enable mouse usage (all modes) in terminals

" Source a global configuration file if available
" XXX Deprecated, please move your changes here in /etc/vim/vimrc
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Normal tabs for makefile
autocmd FileType make setlocal noexpandtab  "normal tabs for makefiles

