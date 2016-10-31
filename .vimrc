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

map <C-n> :NERDTreeToggle<CR>


" color schemes
let &t_Co=256
set cursorline
hi CursorLine term=bold cterm=bold

autocmd BufWritePre * :%s/\s\+$//e
au FileType * setlocal formatoptions-=cro
au BufNewFile,BufRead *.go set filetype=go

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
map <Leader>cd :cd %:p:h<CR>

" Ctrlp & silver searcher
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

" Goyo - markdown zen mode
nnoremap <silent> <leader>z :Goyo<cr>

execute pathogen#infect()
syntax on
filetype plugin indent on
