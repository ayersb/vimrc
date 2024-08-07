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
set expandtab
" Set color scheme & Backgroud
if has('nvim')
  set viminfo+=n~/.vim/viminfo
  set undofile
  set inccommand=nosplit

  " To Install run: cp ~/Dropbox/ComputerSettings/vimrc-files/themes/base16-epistemi.vim ~/.vim/plugged/base16-vim/colors/
 " autocmd vimenter * ++nested colorscheme gruvbox
 " let g:gruvbox_contrast_dark="hard"
  function SetStartColorScheme()
    try
      let outside_mode = readfile('/tmp/working-outside.txt', '', 1)[0]
    catch
      let outside_mode = 'false'
    endtry
    if outside_mode != 'true'
      autocmd vimenter * ++nested colorscheme base16-epistemi
    else
        autocmd vimenter * ++nested colorscheme base16-light-epistemi
    endif
  endfunction
  call SetStartColorScheme()
  function SetColorScheme()
      try
        let outside_mode = readfile('/tmp/working-outside.txt', '', 1)[0]
      catch
        let outside_mode = 'false'
      endtry
      if outside_mode != 'true'
        colorscheme base16-epistemi
      else
        colorscheme base16-light-epistemi
      endif
    endfunction

else
  colorscheme slate
endif
set wildmenu
set wildmode=list:longest

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

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" set shortmess+=c
