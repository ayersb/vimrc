" Vim Settings
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set mouse=a
let gpython_host_prog = '/usr/local/bin/python'
set termguicolors
set runtimepath+=/usr/local/bin/python
" Force terminal to allow 256-color
let &t_Co=256
let base16colorspace=256
let gterminal_color_0 =  '#ffffff'
set cursorline

" Set color scheme & Backgroud
if has('nvim')
  set viminfo+=n~/.vim/viminfo
  set undofile
  set inccommand=nosplit
  colorscheme base16-epistemi
else
  colorscheme slate
endif

set wildmenu
set wildmode=list:longest

" colorscheme base16-chalk
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

" set hlsearch! # now controled by incsearch

" Case-sensitive only if search contains uppercase characters
set ignorecase
set smartcase

" Use the system clipboard as the default register
if has('mac')
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif

" Highlight syntax for known file types
syntax on
" Change timeout len
set timeoutlen=1000
set ttimeoutlen=0
" Set leader character to <Space>
let mapleader=' '

set cmdwinheight=2
