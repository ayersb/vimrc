" Brandon's vimrc
" set nocompatible              " be iMproved, required filetype off                  " required
call plug#begin('~/.vim/plugged')
set previewheight=20

" Rip grep search
"Plug 'jremmen/vim-ripgrep'

":let Grep_Skip_Dirs = 'RCS CVS SCCS node_modules tmp .git .github .tmp build converage'

" Add Syntax Highlighting For Many Languages
Plug 'sheerun/vim-polyglot'
Plug 'chr4/nginx.vim'
" Plug 'uiiaoo/java-syntax.vim'

Plug 'ElmCast/elm-vim'
Plug 'pangloss/vim-javascript'
Plug 'jparise/vim-graphql'
Plug 'ayersb/vim-pgsql'
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Rust Support
Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1
Plug 'sebastianmarkow/deoplete-rust'

" Enable flow plugin in vim-javascript
let g:javascript_plugin_flow = 1

" Debugging for go
Plug 'sebdah/vim-delve'
" Yankstack for yank history
Plug 'maxbrunsfeld/vim-yankstack'
" Vim node utilties
Plug 'moll/vim-node'
Plug 'heavenshell/vim-jsdoc'

" The *MOST* imporant plugin
Plug 'junegunn/vim-emoji'

" Add NERDTree
Plug 'scrooloose/nerdTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
let NERDTreeShowLineNumbers=1
let NERDTreeQuitOnOpen=0
" Other file browser
Plug 'mcchrish/nnn.vim'
" Add SuperTab
" Plug 'ervandew/supertab'

" Add Rainbow Parenthesis
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

" Install undo tree
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
let g:undotree_WindowLayout = 3
nnoremap <F1> :UndotreeToggle<cr>

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
\ 'awk': ['gawk'],
\ 'text': ['proselint', 'vale', 'textlint'],
\ 'bash': ['shfmt'],
\ 'dockerfile': ['hadolint'],
\ 'go': ['golangci-lint'],
\ 'c': [],
\ 'cpp': [],
\ 'json': ['fixjson', 'jsonlint'],
\ 'java': [],
\ 'javascript': [],
\ 'typescript': [],
\ 'make': ['checkmake'],
\ 'markdown': ['mdl', 'prettier', 'vale', 'textlint'],
\ 'python': [],
\ 'sql': ['sqlint'],
\ 'vim': [],
\ 'rust': ['rls'],
\ 'xml': ['xmllint'],
\ 'yaml': ['swaglint', 'yamllint', 'prettier'],
\ 'html': ['prettier'],
\ 'lua': ['luac', 'luacheck'],
\}

let g:ale_fixers = {
\  '*': ['trim_whitespace'],
\  'bash': ['shmt'],
\  'markdown': ['prettier', 'textlint'],
\  'elm': ['elm-format'],
\  'go': ['gofmt', 'goimports'],
\  'json': ['fixjson', 'prettier'],
\  'text': ['trim_whitespace'],
\  'python': ['isort', 'black'],
\  'java': [],
\  'rust': ['rustfmt'],
\  'yaml': ['trim_whitespace'],
\  'html': ['prettier'],
\  'javascript': ['eslint', 'prettier'],
\  'graphql': ['prettier']
\}
let g:ale_fix_on_save = 1
let g:ale_go_golangci_lint_package = 1
let g:ale_rust_rls_toolchain = 'stable'

hi! link ALEError DiffDelete
Plug 'itchyny/lightline.vim'

" function! LightLineFilename()
"   return expand('%')
" endfunction

" let g:lightline = {
"   \ 'colorscheme': 'jellybeans',
"   \ 'active': {
"   \   'left': [ [ 'mode', 'paste' ],
"   \           [ 'readonly', 'relativepath', 'modified' ]
"   \   ],
"   \   'right': [ [ 'lineinfo' ],
"   \              [ 'percent' ],
"   \              [ 'fileencoding', 'filetype' ]
"   \     ]
"   \ },
"   \ 'inactive': {
"   \    'left': [[ 'readonly', 'relativepath', 'modified' ]],
"   \    'right': [['lineinfo'], ['percent'], [ 'fileencoding', 'filetype' ]]
"   \   },
"   \ 'component_expand': {
"   \   'linter_checking': 'lightline#ale#checking',
"   \   'linter_warnings': 'lightline#ale#warnings',
"   \   'linter_errors': 'lightline#ale#errors',
"   \   'linter_ok': 'lightline#ale#ok',
"   \ },
"   \ 'component_type': {
"   \     'linter_checking': 'left',
"   \     'linter_warnings': 'warning',
"   \     'linter_errors': 'error',
"   \     'linter_ok': 'left',
"   \ }
"   \}
" Plug 'maximbaz/lightline-ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='base16'
let g:airline_section_x = '%{PencilMode()}'
let g:airline_powerline_fonts = 1

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/usr/local/opt/fzf'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

" Enable using tab for completions
Plug 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = '<c-n>'

" Intelli sense for vim
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}

" For func argument completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" Plug 'deoplete-plugins/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-docker'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'Shougo/neco-vim'
Plug 'zchee/deoplete-zsh'
Plug 'fszymanski/deoplete-emoji'

" Plug 'artur-shaik/vim-javacomplete2'
Plug 'idanarye/vim-vebugger'
let g:vebugger_leader='<Leader>o'

Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

set runtimepath+=~/.vim/plugged/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
call deoplete#custom#source('emoji', 'filetypes', ['gitcommit', 'markdown', 'text'])
" Highlight trailing whitespace :FixWhitespace to fix
Plug 'bronson/vim-trailing-whitespace'
" Add nice themes for vim
Plug 'chriskempson/base16-vim'
" Plugin for linting
Plug 'Chiel92/vim-autoformat'
let g:formatdef_oracle_formater_osql = '"oracleFormatter"'
" let g:formatters_sql = ['pg_formater_sql']
let g:formatters_osql = ['oracle_formater_osql']

" Better text writing for vim
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-litecorrect'
" Fancier spell check
Plug 'reedes/vim-lexical'

" PlantUML plugins for UML Diagraming
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'
Plug 'GEverding/vim-hocon'
" Run pretter js from vim
" Plug 'prettier/vim-prettier', {'do': 'npm install'}
" let g:prettier#autoformat = 0
" let g:prettier#quickfix_enabled = 0
" augroup prettier
"   autocmd!
"   autocmd BufWritePre *.js,*.jsx,*.mjs,*.css,*.less,*.scss,*.json,*.graphql,*.vue PrettierAsync
" augroup END

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
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-dadbod'
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'tommcdo/vim-fubitive'
let g:fugitive_gitlab_domains = ['https://orahub.oraclecorp.com/']
Plug 'tommcdo/vim-fubitive'
let g:fugitive_bitbucket_domains = ['https://bitbucket.oci.oraclecorp.com/']
" Plugin for merge conflits dependent on fugitive
Plug 'christoomey/vim-conflicted'

" Better swap file handling
Plug 'chrisbra/Recover.vim'

Plug 'neomutt/neomutt.vim'
" Initialize plugin system
call plug#end()
filetype plugin indent on
