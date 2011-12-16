call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

set nonumber
set ruler
set cursorline

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

let mapleader=","

map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
let g:CommandTAcceptSelectionSplitMap='<C-f>'
let g:CommandTMaxHeight=10

nnoremap <leader><leader> <c-^>

set backupdir=~/.vim/_backup
set directory=~/.vim/_temp

if has("autocmd")
  " Real tabs for Makefiles
  au FileType make set noexpandtab

  " PEP8 for python
  au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

  " More ruby file types
  au BufNewFile,BufRead Vagrantfile set ft=ruby

  " More css file types
  au BufNewFile,BufRead *.less set ft=css
end
