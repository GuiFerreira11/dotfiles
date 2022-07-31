" slavar na codificacao desejada
set fileencoding=iso-8859-1

" visualizar na codificacao desejada
set encoding=iso-8859-1

" usar espacos no lugar de tab
set expandtab

" backspace respeitar indentacao
set softtabstop=2

set noerrorbells

" tamanho da indentação
set tabstop=2

" identifica o tipo de arquivo e indenta
filetype plugin indent on

" colorir o editor de acordo com a syntax
syntax on

set smartindent

" coerencia da indentacao com o tamanho do TAB
set shiftwidth=2

" comportamento usual do backspace
set backspace=2

" numerar as linhas
set number

" calcular a distancia relativa das linhas
set relativenumber

" busca incremental - feedback enquanto faz a busca
set incsearch

set scrolloff=8

set signcolumn=yes

call plug#begin('~/.vim/plugged')

Plug 'mbbill/undotree'
Plug 'sbdchd/neoformat'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'rudrab/vimf90'
Plug 'mattn/emmet-vim'

call plug#end()

colorscheme molokai
set encoding=utf8
set guifont=DroidSansMonoPLNerd:h12
let g:airline_powerline_fonts=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let fortran_linter =2
