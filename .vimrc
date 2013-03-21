call pathogen#infect()
let mapleader=','
nmap ts :SyntasticToggleMode<CR>
nmap tl :TagbarToggle<CR>
nmap tt :NERDTreeToggle<CR>
nmap <C-l> gt
nmap <C-h> gT
nmap <leader>t :tabe<CR>

set statusline+=%#warningmsg#
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_error_symbol='✗'
let g:syntastic_enable_balloons = 1
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
filetype on
syntax on
set ai
set bs=2
set showmatch
set laststatus=2
set expandtab
set shiftwidth=4
set cursorline
set number
set autoread

set ignorecase
set fileencodings=utf8,gbk
set hlsearch
filetype plugin on
filetype indent on
"set foldmethod=syntax


autocmd FileType go compiler golang
let g:golang_goroot="/home/dean/bin/go"

"pwoerline{
"set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols='unicode'
set laststatus=2   " Always show the statusline
set encoding=unicode " Necessary to show Unicode glyphs
"}

let NERDTreeShowLineNumbers=1
let NERDTreeHighlightCursorline=1
let NERDChristmasTree=1
let NERDTreeShowLineNumbers=1
let NERDTreeShowFiles=1
let NERDTreeQuitOnOpen=1


let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_sort = 1
