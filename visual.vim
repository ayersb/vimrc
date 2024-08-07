
" set lazyredraw
" Show line and character number in bottom right
set ruler
" Show line numbers on right
set number
" Set auto indent and smart indent
set autoindent
set smartindent
" Set column 80 to be colored
set colorcolumn=120
set splitbelow
set splitright

" set hlsearch! # now controled by incsearch

" Case-sensitive only if search contains uppercase characters
set ignorecase
set smartcase



" Case-sensitive only if search contains uppercase characters
set ignorecase
set smartcase

" Use the system clipboard as the default register
if has('mac')
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif

" Set leader character to <Space>
let mapleader=' '


