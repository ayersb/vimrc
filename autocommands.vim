
set expandtab
" Language specific settings

augroup javascript
  autocmd!
  autocmd Filetype javascript,typescript setlocal ts=2 sts=2 sw=2 colorcolumn=120
  autocmd Filetype javascript,typescript noremap <buffer> <F5> :call InsertConsoleLogJs()<CR>
  autocmd Filetype javascript,typescript noremap <buffer> <F4> :call SwapRoot()<CR>
  " autocmd Filetype javascript noremap <buffer> <F3> :call RunJsFile()<CR>
  " autocmd Filetype javascript noremap <buffer> <F2> :call RunJsFileOracle()<CR>

  autocmd Filetype javascript,typescript cnoreabbrev jsdoc JsDoc
  autocmd BufWritePre *.js :%s/^\(import.*from.*\)\$P\(.*\)$/\1\~\2/e
augroup end

augroup textFiles
  autocmd!

  autocmd Filetype javascript,typescript noremap <buffer> <F5> :call InsertConsoleLogJs()<CR>
  autocmd Filetype markdown,mkd,gitcommit call lexical#init()

  autocmd Filetype markdown,mkd,gitcommit call lexical#init()

  autocmd FileType text call pencil#init()
                            \ | call lexical#init()
                            \ | call litecorrect#init()

  autocmd Filetype markdown setlocal colorcolumn=80 ts=2 sts=2 sw=2
  autocmd FileType text setlocal colorcolumn=61 tw=60
  " Automatically enable spell check for commit messages and text files
  autocmd BufWritePre COMMIT_EDITMSG,*.md,*.txt %s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/ge
augroup END

augroup sql
  autocmd!
  autocmd Filetype sql setlocal ts=2 sts=2 sw=2
  autocmd BufRead,BufNewFile afiedt.buf set filetype=osql
  autocmd BufRead,BufNewFile afiedt.buf set syntax=sql
  autocmd BufWritePre *.sql,afiedt.buf Autoformat
augroup END

augroup shell
  autocmd!
  autocmd Filetype sh,bash,zsh setlocal ts=4 sts=4 sw=4 colorcolumn=80
augroup END

augroup misc
  autocmd!
  autocmd Filetype vim setlocal ts=2 sts=2 sw=2 colorcolumn
  autocmd Filetype go setlocal ts=4 sts=4 sw=4
  autocmd Filetype python setlocal colorcolumn=88
  autocmd Filetype smarty setlocal ts=2 sts=2 sw=2
 " For oracle SQLcli
  " For neomutt
  autocmd BufRead neomutt-* set tw=72
augroup end
