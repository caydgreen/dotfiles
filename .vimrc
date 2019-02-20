set nocompatible

" Currently using pathogen for Fugitive and VimVue syntax highlighting
execute pathogen#infect()
syntax on
filetype plugin indent on

" Backspace over everything
set backspace=2

" Use 256 colors for a nice colorscheme
set t_Co=256

" Search case-insensitive (unless mixed case) incrementally with highlight, CR will clear
set ignorecase
set smartcase
set incsearch
set hlsearch

" Remap keys to finish end characters
inoremap { {<CR>}<Esc>ko
inoremap [ [<CR>]<Esc>ko
inoremap ( (<CR>)<Esc>ko

" Set cursor to last position you were at when you opened the file
set viminfo='10,\"100,:20,%,n~/.viminfo
autocmd BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Preserve column when jumping around
set nostartofline

" Always show the status line
set laststatus=2

" Respect modelines
set modeline

" Use the ruler to give cursor position
set ruler

" Default to 2 spaces for tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Formatting characters at end of line
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
