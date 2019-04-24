" Use Command window by default for user entered commands
noremap <leader>; q:i
" Shortcut for command editor mode
" Toggle column 80 marker
" 	On
noremap <leader>c :set colorcolumn=81<CR>
" 	Off
noremap <leader>nc :set colorcolumn=-1<CR>

noremap <M-w> <C-w>
" Resize Buffers
noremap <C-F9> 2<C-w>>
noremap <C-F12> 2<C-w><
noremap <C-F11> 2<C-w>-
noremap <C-F10> 2<C-w>+
" Shortcut for buffer switcher
noremap <leader>b :Buffers<CR>
" Toggle highlighting for search
" 	On
" nnoremap <leader>h :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>
:nnoremap <silent><expr> <leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
"	Off
noremap <leader>nh :set hlsearch!<CR>
"
" Start a ripgrep search
noremap <leader>r q:iRg<Space><ESC>a
" Toggle folding by syntax
noremap <leader>fms :setlocal foldmethod=syntax<CR>
noremap <leader>fmi :setlocal foldmethod=indent<CR>
noremap <leader>nfm :setlocal foldmethod=manual<cr>
" navigate with control hjkl
noremap <C-j> <C-w>j
noremap <C-h> <C-w>h
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" Change register d and x command copies to
noremap x "xx
noremap X "xX
" Add shortcut for normal delete copy behavior
" nnoremap <leader>d "*d
" nnoremap d "xd

" shortcut to yank all
noremap <leader>ay :%y+<CR>
" Shortcut to search for chars under cursor in visual mode
vnoremap <leader>/ y/<C-R>"<CR>
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
" Use Fzf with fd for fuzzy find
noremap <C-p> :FZF<CR>
noremap <leader>p :FZF<CR>

" Nerd Tree Shortcuts
noremap <leader>tt :NERDTreeToggle<CR>
noremap <leader>tf :NERDTreeFind<CR>
noremap <leader>t<leader>t :NERDTree<CR>

" Git Fugitive Shortcuts
" noremap <leader>gc :Gcommit<CR>
noremap <leader>gs :Gstatus<CR>

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
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Easy motion shortcuts
" map <leader>/ <Plug>(easymotion-overwin-w)
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)

" Quickly print the last 10 messages
map <leader>m :10messages<CR>
" Copy filename to flipboard
nmap <leader>yf :let @*=expand("%")<CR>
nmap <leader>yF :let @*=expand("%:p")<CR>
let g:bracket_pairs = {
    \ '{':"}\<c-g>U\<left>",
    \ '(':")\<c-g>U\<left>",
    \ '[':"]\<c-g>U\<left>"
    \ }
inoremap <expr> = get(g:bracket_pairs, getline('.')[col('.')-2], '=')
