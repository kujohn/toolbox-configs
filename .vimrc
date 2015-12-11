set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ruler
set number
set autoindent
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set nowrap
set backspace=2
set scrolloff=6
set sidescrolloff=15
set sidescroll=1
set hlsearch
set cursorline
syntax on
syntax enable

" color schemes
let &t_Co=256
set background=dark
color mango

" airline
let g:airline_powerline_fonts = 1

"autocmd BufWritePre * :%s/\s\+$//e
"au FileType * setlocal formatoptions-=cro
au BufNewFile,BufRead *.go set filetype=go

" GO Syntax Highlighting
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" GO automatic import, go-run mapping, go-docs
let g:go_fmt_command = "goimports"
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" Goyo - markdown zen mode
nnoremap <silent> <leader>z :Goyo<cr>

execute pathogen#infect()
syntax on
filetype plugin indent on
