" Brandon's vimrc
"a set nocompatible              " be iMproved, required filetype off                  " required
call plug#begin('~/.vim/plugged')
set previewheight=20

" Rip grep search
"Plug 'jremmen/vim-ripgrep'
Plug 'lifepillar/pgsql.vim'

let g:sql_type_default = 'pgsql'
Plug 'morhetz/gruvbox'

":let Grep_Skip_Dirs = 'RCS CVS SCCS node_modules tmp .git .github .tmp build converage'

" Add Syntax Highlighting For Many Languages
Plug 'sheerun/vim-polyglot'
Plug 'chr4/nginx.vim'
" Plug 'uiiaoo/java-syntax.vim'

Plug 'ElmCast/elm-vim'
Plug 'pangloss/vim-javascript'
Plug 'jparise/vim-graphql'
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Old Rust Support
" Plug 'rust-lang/rust.vim'
" let g:rustfmt_autosave = 1

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

" Json view
Plug 'brtastic/vim-jsonviewer'

" Runs shell comands ansyc and ouputs to quickfix
Plug 'skywind3000/asyncrun.vim'
let g:asyncrun_open = 8
cnoreabbrev ar AsyncRun

" Add NERDTree
Plug 'scrooloose/nerdTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
let NERDTreeShowLineNumbers=1
let NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1

" Add Rainbow Parenthesis
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

" Install undo tree
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
let g:undotree_WindowLayout = 3
nnoremap <F1> :UndotreeToggle<cr>

Plug 'sirtaj/vim-openscad'

" Taboo for tabs
Plug 'gcmt/taboo.vim'
let g:taboo_tab_format=' %N:%f%m(%W)'
let g:taboo_renamed_tab_format=' %N:[%l](%W)'
set guioptions-=e


Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
" call glaive#Install()

" Plug 'psf/black', { 'tag': '19.10b0' }
" let g:black_target_version = "19.10.b0"

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='base16'
let g:airline_section_x = '%{PencilMode()}'
let g:airline_powerline_fonts = 1

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

command! -bang -nargs=* Rg 
      \ call fzf#vim#grep(
      \ "rg --column --line-number --no-heading --color=always --smart-case --hidden --glob '!*.lock' --glob '!.git/**' --no-ignore-exclude -- ".shellescape(<q-args>), 1,
      \ fzf#vim#with_preview(), <bang>0)

" Enable using tab for completions
" Plug 'ervandew/supertab'
" let g:SuperTabDefaultCompletionType = '<c-n>'

" Enable auto omni complete
"Plug 'lifepillar/vim-mucomplete'
"let g:mucomplete#completion_delay = 3
"set completeopt+=menuone


" TODO: STUFF DIABLED BECAUSE IDK IM USING IT
" Plug 'idanarye/vim-vebugger'
" let g:vebugger_leader='<Leader>o'
"
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" let g:neosnippet#enable_completed_snippet = 1
"
"" Easy Motion
" Plug 'easymotion/vim-easymotion'
" let g:EasyMotion_smartcase = 1
" Plug 'vim-test/vim-test'
" let test#strategy = "neovim"
" noremap  <silent> <leader>0 :TestNearest<CR>
" noremap  <silent> <leader>9 :TestFile<CR>
" noremap  <silent> <leader>8 :TestFile<CR>

"  END DISABLED STUFF
"
" Highlight trailing whitespace :FixWhitespace to fix
Plug 'ntpeters/vim-better-whitespace'
Plug 'bronson/vim-trailing-whitespace'

" Add nice themes for vim
Plug 'fnune/base16-vim'

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


" The TPope plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
" Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-unimpaired'
Plug 'dhruvasagar/vim-table-mode'
" Gbrowse bitbucket
Plug 'tommcdo/vim-fubitive'
" let g:fubitive_domain_pattern = ''
" Plug 'tpope/vim-dadbod'
Plug 'plasticboy/vim-markdown'
" let g:markdown_folding = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_new_list_item_indent = 2


Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'tommcdo/vim-fubitive'

" let g:fugitive_gitlab_domains = ['']
Plug 'tommcdo/vim-fubitive'

" let g:fugitive_bitbucket_domains = ['']
" Plugin for merge conflits dependent on fugitive
Plug 'christoomey/vim-conflicted'

" Better swap file handling
Plug 'chrisbra/Recover.vim'

Plug 'neomutt/neomutt.vim'

Plug 'tyru/open-browser.vim'
let g:openbrowser_default_search = "google"
vmap O <Plug>(openbrowser-smart-search)

Plug 'machakann/vim-highlightedyank'
Plug 'jez/vim-superman'


Plug 'powerman/vim-plugin-AnsiEsc'

Plug 'google/vim-jsonnet'
Plug 'chrisbra/Colorizer'

" Plug 'ttibsi/pre-commit.nvim'
" Intelli sense for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" Copilot
Plug 'github/copilot.vim'


" Tmux integration with vim
Plug 'preservim/vimux'
let g:VimuxHeight = "20"
let g:VimuxOrientation = "v"
let g:VimuxUseNearest = 0
let g:VimuxResetSequence = "q C-u"
let g:VimuxPromptString = "Command? "
let g:VimuxRunnerType = "pane"
let g:VimuxRunnerName = ""
let g:VimuxCloseOnExit = 0

Plug 'vim-autoformat/vim-autoformat'

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let b:ale_linters = {'openscad': ['sca2d']}
Plug 'dense-analysis/ale'
Plug 'hashivim/vim-terraform'

" Initialize plugin system
call plug#end()
filetype plugin indent on
