set nocompatible
execute pathogen#infect()
let g:ackprg = 'ag --nogroup --nocolor --column' " silver searcher
let mapleader=","

" =============== GENERAL CONFIG & NAVIGATION =========
filetype plugin indent on
syntax on
set backspace=indent,eol,start

set visualbell            " No more annoying bell sound
set laststatus=2          " Always show the status line
set modeline              " Respect modelines
set ruler                 " Use the ruler to give cursor position
set autoread              " Reload files changed outside of  vim
set list                  " Formatting characters at end of line
set number                " set numbering on leftside
set showcmd               " Show the imcomplete cmds at the bottom
set backspace=2           " Backspace over everything
set t_Co=256              " Use 256 colors for a nice colorscheme

" Default to 2 spaces for tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Search case-insensitive (unless mixed case) incrementally with highlight, CR will clear
set ignorecase
set smartcase
set incsearch
set hlsearch

" Turn Off Swap Files
set noswapfile
set nobackup
set nowb

" Set cursor to last position you were at when you opened the file
set viminfo='10,\"100,:20,%,n~/.viminfo
autocmd BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" ============= CUSTOM SETTINGS ==============
" Window pane resizing
 nnoremap <silent> <Leader>[ :exe "resize " . (winheight(0) * 3/2)<CR>
 nnoremap <silent> <Leader>] :exe "resize " . (winheight(0) * 2/3)<CR>

" ============== RETIRED SETTINGS =============
" Remap keys to finish end characters // This ended up being annoying
" :inoremap ( ()<Esc>i
" :inoremap [ []<Esc>i
" :inoremap { {}<Esc>i

" set nostartofline       " Preserve column when jumping around
