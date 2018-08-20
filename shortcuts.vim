" Use Command window by default for user entered commands
:noremap <leader>; q:i
" Shortcut for command editor mode
" Toggle column 80 marker
" 	On
:noremap <leader>c :set colorcolumn=81<CR>
" 	Off
:noremap <leader>nc :set colorcolumn=-1<CR>

" Resize Buffers
noremap <C-F9> 2<C-w>>
noremap <C-F12> 2<C-w><
noremap <C-F11> 2<C-w>+
noremap <C-F10> 2<C-w>-
" Shortcut for buffer switcher
:noremap <leader>b :CtrlPBuffer<CR>
" Toggle highlighting for search
" 	On
:noremap <leader>h :set hlsearch<CR>
"	Off
:noremap <leader>nh :set hlsearch!<CR>
"
" Start a ripgrep search
:noremap <leader>r q:iRg<Space>''<Esc>i
" Toggle folding by syntax
:noremap <leader>fms :setlocal foldmethod=syntax<CR>
:noremap <leader>fmi :setlocal foldmethod=indent<CR>
:noremap <leader>nfm :setlocal foldmethod=manual<cr>
" navigate with control hjkl
:noremap <C-j> <C-w>j
:noremap <C-h> <C-w>h
:noremap <C-k> <C-w>k
:noremap <C-l> <C-w>l
" Change register x command copies to. Change register x command copies to.
:noremap x "xx
:noremap X "xX
" Add nice copy shortcuts
:noremap <leader>yy ^yg_
:noremap <leader>yl yg_
:noremap <leader>yh y^
" Add nice no clipboard delete shortcuts
:noremap <leader>dd "xdd
:noremap <leader>dl "xd$
:noremap <leader>xh "xd^
" shortcut to yank all
noremap <leader>ay :%y+<CR>
"
" Toggle Spellcheck
noremap <leader>s :setlocal spell spelllang=en_us<CR>
noremap <leader>ns :setlocal nospell<CR>

" Autoformat shortcut
noremap <leader>ff :Autoformat<CR>
noremap <leader>fp :let @+ = expand("%:p")<CR>
" FixWhiteSpace Shortcut
noremap <leader>fw :FixWhitespace<CR>

" Tab management shortcuts
noremap <c-w>` <c-w>T
noremap <c-w><Left> :-tabmove<cr>
noremap <c-w><Right> :+tabmove<cr>


" Plugin Shortcuts
"
"
" Use Fzf instead of CtrlP
noremap <C-p> :FZF<CR>

" Nerd Tree Shortcuts
:noremap <leader>tt :NERDTreeFocus<CR>
:noremap <leader>th :NERDTreeToggle<CR>
:noremap <leader>tf :NERDTreeFind<CR>

" Git Fugitive Shortcuts
noremap <leader>gc :Gcommit<CR>
noremap <leader>gs :Gstatus<CR>
noremap <leader>gd :Gdiff<CR>
noremap <leader>gb :.Gbrowse<CR>

" Taboo Shortcuts
noremap <c-w><Tab> :tabe<CR>
noremap <c-w>c :TabooOpen<Space>
noremap <c-w>, :TabooRename<Space>

" Undotree toggle
noremap <leader>tu :UndotreeToggle<CR>

" Incsearch remap
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Easy motion shortcuts
map <leader>/ <Plug>(easymotion-overwin-w)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Quickly print the last 10 messages
map <leader>m :10messages<CR>