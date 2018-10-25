" Brandon's vimrc
set nocompatible              " be iMproved, required filetype off                  " required
call plug#begin('~/.vim/plugged')
set previewheight=20

" Rip grep search
Plug 'jremmen/vim-ripgrep'

":let Grep_Skip_Dirs = 'RCS CVS SCCS node_modules tmp .git .github .tmp build converage'

" Add Syntax Highlighting For Many Languages
Plug 'sheerun/vim-polyglot'
Plug 'ElmCast/elm-vim'
Plug 'pangloss/vim-javascript'
Plug 'jparise/vim-graphql'
Plug 'ayersb/vim-pgsql'
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Enable flow plugin in vim-javascript
let g:javascript_plugin_flow = 1


" Vim node utlites
Plug 'moll/vim-node'
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = ''
let g:ctrlp_cmd = ''
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
" Add tern javascript checking Plug 'ternjs/tern_for_vim' Add nice js doc thing
Plug 'heavenshell/vim-jsdoc'

" Reasonable auto swap in favor of annoying swap messages
Plug 'gioele/vim-autoswap'
set title titlestring=
" let g:autoswap_detect_tmux = 1

" The *MOST* imporant plugin
Plug 'junegunn/vim-emoji'
" Add NERDTree
Plug 'scrooloose/nerdTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
let NERDTreeShowLineNumbers=1
let NERDTreeQuitOnOpen=0

" Add SuperTab
" Plug 'ervandew/supertab'

" Add Rainbow Parenthesis
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

" Install undo tree
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
let g:undotree_WindowLayout = 3
nnoremap <F5> :UndotreeToggle<cr>

" Taboo for tabs
Plug 'gcmt/taboo.vim'
let g:taboo_tab_format=' %N:%f%m(%W)'
let g:taboo_renamed_tab_format=' %N:[%l](%W)'
set guioptions-=e
" Ale syntax linter
Plug 'w0rp/ale'
let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {
\ 'awk': ['gawk'], 'text': ['proselint', 'vale'],
\ 'bash': ['language-server', 'shfmt'],
\ 'dockerfile': ['hadolint'],  'make': ['checkmake'],
\ 'go': ['gofmt', 'gomod', 'govet', 'gotype', 'gometalinter', 'gobuild',  'goimports', 'golint'],
\ 'graphql': ['eslint', 'prettier'],
\ 'javascript': ['flow', 'eslint', 'prettier', 'prettier-eslint'],
\ 'json': ['fixjson', 'jsonlint'],
\ 'markdown': ['mdl', 'prettier', 'vale'],
\ 'python': ['autopep8',  'yapf',  'black'],
\ 'sql': ['sqlint'],
\ 'vim': ['vint'],
\ 'yaml': ['swaglint', 'yamllint', 'prettier'],
\}
let g:ale_fixers = {
\  'bash': ['shmt'],
\  'elm': ['elm-format'],
\  'go': ['gofmt', 'goimports'],
\  'javascript': ['eslint'],
\  'json': ['fixjson', 'prettier'],
\  'text': ['remove_trailing_lines', 'trim_whitespace'],
\  'python': ['autopep8', 'yapf', 'isort', 'black'],
\  'yaml': ['remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_fix_on_save = 1

hi! link ALEError DiffDelete
Plug 'itchyny/lightline.vim'

function! LightLineFilename()
  return expand('%')
endfunction

let g:lightline = {
  \ 'colorscheme': 'jellybeans',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \           [ 'readonly', 'relativepath', 'modified' ]
  \   ],
  \   'right': [ [ 'lineinfo' ],
  \              [ 'percent' ],
  \              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
  \              [ 'fileencoding', 'filetype' ]
  \     ]
  \ },
  \ 'inactive': {
  \    'left': [[ 'readonly', 'relativepath', 'modified' ]],
  \    'right': [['lineinfo'], ['percent'], [ 'fileencoding', 'filetype' ]]
  \   },
  \ 'component_expand': {
  \   'linter_checking': 'lightline#ale#checking',
  \   'linter_warnings': 'lightline#ale#warnings',
  \   'linter_errors': 'lightline#ale#errors',
  \   'linter_ok': 'lightline#ale#ok',
  \ },
  \ 'component_type': {
  \     'linter_checking': 'left',
  \     'linter_warnings': 'warning',
  \     'linter_errors': 'error',
  \     'linter_ok': 'left',
  \ }
  \}
Plug 'maximbaz/lightline-ale'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/usr/local/opt/fzf'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

" Add python auto-indent
Plug 'vim-scripts/indentpython.vim', { 'for': 'python'}
" Auto complete support
" Plug 'valloric/YouCompleteMe', { 'do': './install.py --go-completer --js-completer --rust-completer' }
" let g:ycm_filetype_blacklist = { 'txt': 1, 'md': 1}
" let g:ycm_register_as_syntastic_checker = 0
" Enable using tab for completions
Plug 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = '<c-n>'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wokalski/autocomplete-flow'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" For func argument completion
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'zchee/deoplete-go', { 'do': 'make'}

let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1

" Highlight trailing whitespace :FixWhitespace to fix
Plug 'bronson/vim-trailing-whitespace'
" Add nice themes for vim
Plug 'chriskempson/base16-vim'
" Plugin for linting
Plug 'Chiel92/vim-autoformat'
let g:formatdef_pg_formater_sql = '"pg_format"'
let g:formatters_sql = ['pg_formater_sql']
let g:formatters_buf = ['pg_formater_sql']

" Easy way to run eslint
Plug 'ruanyl/vim-fixmyjs'
" Better text writing for vim
Plug 'reedes/vim-pencil'

" Run pretter js from vim
Plug 'prettier/vim-prettier', {'do': 'npm install'}
let g:prettier#autoformat = 0
let g:prettier#quickfix_enabled = 0
augroup prettier
  autocmd!
  autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue PrettierAsync
augroup END

" Vimtex ~ Latex plugin for vim
"let g:livepreview_previewer = 'open -a Preview'

Plug 'haya14busa/incsearch.vim'
" Easy Motion
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_smartcase = 1

" The TPope plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-obsession'
Plug 'plasticboy/vim-markdown'
" Plugin for merge conflits dependent on fugitive
Plug 'christoomey/vim-conflicted'


Plug 'neomutt/neomutt.vim'
" Initialize plugin system
call plug#end()
filetype plugin indent on
