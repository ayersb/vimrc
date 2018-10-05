" VIMRC Main File
" VIMRC FILE
source  $GLOBAL_SETTINGS_DIR/vimrc-files/plugin-setup.vim
source $GLOBAL_SETTINGS_DIR/vimrc-files/settings.vim
source $GLOBAL_SETTINGS_DIR/vimrc-files/shortcuts.vim
set viminfo+=n~/.vim/viminfo
function! SwapRoot()
  let startcol = col('.')
  let startline = line('.')
  if (getline('.') =~# ".*\'\\~.*")
    s/'\~/'$P/
    "normal! $F/
    call cursor(startline, startcol+1)
  elseif ((getline(".") =~ ".*\'\\$P.*"))
    s/'\$P/'\~/
    call cursor(startline, startcol-1)
  else
    echo 'No Match'
  endif
endfunction

function! RunJsFile()
  belowright split
  if (expand('%:t') =~# '.test.js')
    terminal SQL_DIALECT=sqlite3 npm run test:server:file %
  else
    terminal babel-node $(realpath %)
 endif
endfunction

function! RunJsFileOracle()
  belowright split
  if (expand('%:t') =~# '.test.js')
    terminal SQL_DIALECT=oracledb ORACLEDB_HOST=localhost npm run test:server:file %
  else
    terminal babel-node $(realpath %)
 endif
endfunction

" insert json console log
function! InsertConsoleLogJs()
  if strlen(getline('.')) > 0
      execute "normal! $a\<CR>"
    endif
    execute 'normal! ccconsole.log(JSON.stringify(%, null, 1))'
    execute 'normal! F%s'
endfunction


set expandtab
" Language specific settings

augroup javascript
  autocmd!
  autocmd Filetype javascript :setlocal ts=2 sts=2 sw=2
  autocmd Filetype javascript :setlocal colorcolumn=120
  autocmd Filetype javascript :noremap <buffer> <F8> :call InsertConsoleLogJs()<CR>
  autocmd Filetype javascript :noremap <buffer> <F7> :call SwapRoot()<CR>
  autocmd Filetype javascript :noremap <buffer> <F4> :call RunJsFile()<CR>
  autocmd Filetype javascript :noremap <buffer> <F3> :call RunJsFileOracle()<CR>

  autocmd Filetype javascript cnoreabbrev jsdoc JsDoc
  autocmd BufWritePre *.js :%s/^\(import.*from.*\)\$P\(.*\)$/\1\~\2/e
augroup end

augroup textFiles
  autocmd!
  autocmd Filetype markdown :setlocal colorcolumn=80
  autocmd FileType text setlocal spell spelllang=en_us
augroup END

augroup sql
  autocmd!
  autocmd Filetype sql :setlocal ts=2 sts=2 sw=2
  autocmd BufRead,BufNewFile afiedt.buf :set syntax=sql
  autocmd BufWritePre *.sql,afiedt.buf :Autoformat
augroup END

augroup misc
  autocmd!
  autocmd Filetype vim :setlocal ts=2 sts=2 sw=2
  autocmd Filetype go :setlocal ts=4 sts=4 sw=4
  autocmd Filetype sh,bash,zsh :setlocal ts=4 sts=4 sw=4
  autocmd Filetype python :setlocal colorcolumn=80
  " Automatically enable spell check for commit messages
  autocmd BufNewFile,BufRead COMMIT_EDITMSG,*.md,*.txt setlocal spell spelllang=en_us
  " For oracle SQLcli
  " For neomutt
  autocmd BufRead neomutt-* set tw=72
augroup end

" Run last
highlight Search guifg=purple4 guibg=SeaGreen
highlight MatchParen guifg=aquamarine3 guibg=bisque4 gui=bold
