
set expandtab
" Language specific settings

augroup javascript
  autocmd!
  autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 colorcolumn=120
  autocmd Filetype javascript noremap <buffer> <F8> :call InsertConsoleLogJs()<CR>
  autocmd Filetype javascript noremap <buffer> <F7> :call SwapRoot()<CR>
  autocmd Filetype javascript noremap <buffer> <F4> :call RunJsFile()<CR>
  autocmd Filetype javascript noremap <buffer> <F3> :call RunJsFileOracle()<CR>

  autocmd Filetype javascript cnoreabbrev jsdoc JsDoc
  autocmd BufWritePre *.js :%s/^\(import.*from.*\)\$P\(.*\)$/\1\~\2/e
augroup end

augroup textFiles
  autocmd!
  autocmd Filetype markdown setlocal colorcolumn=80
  " Automatically enable spell check for commit messages and text files
  autocmd BufNewFile,BufRead COMMIT_EDITMSG,*.md,*.txt setlocal spell spelllang=en_us
augroup END

augroup sql
  autocmd!
  autocmd Filetype sql setlocal ts=2 sts=2 sw=2
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
  autocmd Filetype python setlocal colorcolumn=80
 " For oracle SQLcli
  " For neomutt
  autocmd BufRead neomutt-* set tw=72
augroup end

