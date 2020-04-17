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

  autocmd Filetype text,markdown,mkd,gitcommit  call pencil#init({'wrap': 'soft'})
                                  \ | call lexical#init()
                                  \ | call litecorrect#init()

  autocmd Filetype markdown setlocal colorcolumn=80 ts=2 sts=2 sw=2
  " Automatically enable spell check for commit messages and text files
  autocmd BufWritePre COMMIT_EDITMSG,*.md,*.txt spell spelllang=en_us

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

augroup puml
  autocmd!
  autocmd FileType plantuml noremap <F5> :PlantumlOpen<CR>
augroup end


augroup java
  autocmd!
  autocmd Filetype java setlocal colorcolumn=110 ts=8 sts=8 sw=4
  autocmd FileType java noremap <buffer> <F5> :OpenInIntelij<CR>
  autocmd Filetype java highlight Operator ctermfg=5  guifg=#d175bc
                    \ | highlight Typedef ctermfg=5  guifg=#d175bc
                    \ | highlight Type ctermfg=4  guifg=#69b7d3
                    \ | highlight Number term=bold ctermfg=16 gui=bold guifg=#d2d22d
                    \ | let java_highlight_functions = 1
                    \ | let java_highlight_all = 1
                    \ | highlight link javaScopeDecl Statement
                    \ | highlight link javaType Type
                    \ | highlight link javaDocTags PreProc
augroup end

augroup deopletDisable
  autocmd!
  autocmd FileType javascript,typescript,python,java,yaml,lisp,yaml,docker,sh call deoplete#custom#buffer_option('auto_complete', v:false)
augroup end

augroup misc
  autocmd!
  autocmd Filetype vim setlocal ts=2 sts=2 sw=2 colorcolumn
  autocmd FileType lua,hocon setlocal ts=2 sts=2 sw=2
  autocmd Filetype go setlocal ts=4 sts=4 sw=4
  autocmd Filetype python setlocal colorcolumn=88
  autocmd Filetype conf setlocal colorcolumn=88
  autocmd Filetype smarty setlocal ts=2 sts=2 sw=2
  autocmd BufRead,BufNewFile afiedt.buf set filetype=osql
  autocmd BufRead,BufNewFile *.conf.template set syntax=nginx

  autocmd BufRead,BufNewFile *.conf.template setlocal ts=4 sts=4 sw=2

  " For neomutt
  autocmd BufRead neomutt-* set tw=72
augroup end
