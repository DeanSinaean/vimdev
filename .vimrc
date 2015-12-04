call pathogen#infect()
let mapleader=','
nmap ts :SyntasticToggleMode<CR>
"nmap tl :TlistToggle<CR>
nmap tl :TagbarToggle<CR>
let Tlist_GainFocus_On_ToggleOpen=1
nmap tt :NERDTreeToggle<CR>
nmap <C-l> gt
nmap <C-h> gT
nmap <leader>t :tabe<CR>
nmap tm :ConqueTerm bash<CR>
nmap td :ConqueTermSplit bash<CR>
nmap tv :ConqueTermVSplit bash<CR>
nmap tb :ConqueTermTab bash<CR>

set statusline+=%#warningmsg#
let g:syntastic_check_on_open=0
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
"set expandtab
set shiftwidth=4
set tabstop=4
set cursorline
set number
set autoread

set ignorecase
set fileencodings=utf8,gbk,gb2312,gb18032
set hlsearch
filetype plugin on
filetype indent on
"set foldmethod=syntax


"autocmd FileType go compiler golang
"let g:golang_goroot="/home/dean/bin/go"

"pwoerline{
"set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols='unicode'
set laststatus=2   " Always show the statusline
"set encoding=unicode " Necessary to show Unicode glyphs
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

set guifont=Ubuntu\ Mono\ 12
filetype plugin on

"use NeoComplete along with gocode
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_prefetch=1
let g:neocomplete#enable_auto_select=1
let g:neocomplete#enable_auto_delimiter=1
let g:neocomplete#enable_fuzzy_completion=1
let g:neocomplete#enable_ignore_case=1
let g:neocomplete#enable_refresh_always=1
let g:neocomplete#sources#syntax#min_keyword_length = 0

"if !exists('g:neocomplete#keyword_patterns')
"    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
au FileType go setlocal omnifunc=gocomplete#Complete
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	"return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
	" For no inserting <CR> key.
	return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.go = '\h\w*\.'

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
imap <TAB>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" imap <expr><TAB>
" " \ pumvisible() ? "\<C-n>" :
" " \ neosnippet#expandable_or_jumpable() ?
" " \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
			\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
	set conceallevel=2 concealcursor=niv
endif

set completeopt=longest,menu
autocmd BufNewFile *.go 0r /home/dean/.vim/template/go/main.go
au FileType go let g:gofmt_command="goimports"
au BufWritePre *.go Fmt
set exrc

let g:solarized_termcolors=256
set t_Co=256
set background=light
colo solarized

set mouse=a
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
	\ }
