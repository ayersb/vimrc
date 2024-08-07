" Language specific settings

augroup javascript
  autocmd!
  autocmd Filetype javascript,typescript setlocal ts=2 sts=2 sw=2 colorcolumn=120
  autocmd Filetype javascript,typescript cnoreabbrev jsdoc JsDoc
  autocmd BufNewFile,BufRead  * if getline(1) == '#!/usr/bin/env zx' | set ft=javascript | endif

  " Run jest for current project
  autocmd Filetype javascript,typescript command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')

  " Run jest for current file
  autocmd Filetype javascript,typescript command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])

  autocmd Filetype javascript,typescript nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>
  " Init jest in current cwd, require global jest command exists
  autocmd Filetype javascript,typescript command! JestInit :call CocAction('runCommand', 'jest.init')
augroup end

augroup logfile
  autocmd!
  autocmd BufWritePre *.log  silent FixWhitespace
augroup end

augroup scadFiles
  autocmd Filetype openscad nnoremap <buffer> <leader>! :VimuxRunCommand("open " . bufname("%"))<cr>
  autocmd Filetype openscad nnoremap <buffer> <leader>g! :VimuxRunCommand("open " . bufname("%"))<cr>
  autocmd BufWrite *.scad silent Autoformat
augroup END

augroup textFiles
  autocmd!
  autocmd Filetype text,markdown,mkd,gitcommit  call pencil#init({'wrap': 'soft'})
                                  \ | call lexical#init()
                                  \ | call litecorrect#init()
  autocmd Filetype text setlocal colorcolumn=100 ts=2 sts=2 sw=2
  autocmd Filetype markdown setlocal colorcolumn=100 ts=2 sts=2 sw=2
  " Automatically enable spell check for commit messages and text files
  autocmd Filetype markdown,text set spell spelllang=en_us
  autocmd BufWritePre COMMIT_EDITMSG  set spell spelllang=en_us
  set spellfile=~/Dropbox/ComputerSettings/vimrc-files/en.utf-8.add
  autocmd FileType markdown setlocal foldlevel=99

augroup END

augroup sql
  autocmd!
  autocmd Filetype sql setlocal ts=2 sts=2 sw=2
augroup END

augroup shell
  autocmd!
  autocmd Filetype sh,bash,zsh setlocal ts=2 sts=2 sw=2 colorcolumn=80
augroup END

augroup puml
  autocmd!
  autocmd FileType plantuml noremap <F5> :PlantumlOpen<CR>
augroup end


augroup java
  autocmd!

  " autocmd FileType java Glaive codefmt google_java_executable='JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.9.jdk/Contents/Home google-java-format -a'
  " autocmd FileType java AutoFormatBuffer google-java-format
  autocmd Filetype java setlocal colorcolumn=180 ts=8 sts=8 sw=4
  autocmd Filetype java highlight Operator ctermfg=5  guifg=#d175bc
                    \ | highlight Typedef ctermfg=5  guifg=#d175bc
                    \ | highlight Type ctermfg=4  guifg=#69b7d3
                    \ | highlight Number term=bold ctermfg=16 gui=bold guifg=#d2d22d
                    \ | highlight link javaScopeDecl Statement
                    \ | highlight link javaType Type
                    \ | highlight link javaDocTags PreProc
augroup end

augroup thehighlights
  autocmd BufRead,BufNewFile highlight Search guifg=orchid1 guibg=gray16
  autocmd BufRead,BufNewFile highlight IncSearch guifg=slateblue4 guibg=orchid3 gui=bold
  autocmd BufRead,BufNewFile highlight Substitute guifg=orchid1 guibg=gray16
  autocmd BufRead,BufNewFile highlight MatchParen guifg=SpringGreen2 guibg=grey24 gui=bold
augroup end

augroup python
  autocmd Filetype python setlocal colorcolumn=88
  " autocmd BufWrite *.py silent Black
  autocmd Filetype python nnoremap <buffer> <leader>! :VimuxRunCommand("python3 " . bufname("%"))<cr>
  autocmd Filetype python nnoremap <buffer> <leader>g! :VimuxRunCommand("nodemon -w " . bufname("%") .  " -x python3 " . bufname("%"))<cr>
  autocmd Filetype python nnoremap <buffer> <F2> :s/^\(\s*\)\(.*\)$/\1pytest.set_trace()\r\1\2/<cr>
augroup end

augroup rust
  autocmd Filetype rust nnoremap <buffer> <leader>! :VimuxRunCommand("cargo run ")<cr>
  autocmd Filetype rust nnoremap <buffer> <leader>g! :VimuxRunCommand("nodemon -w ./ -x cargo run -e rs " . bufname("%"))<cr>

augroup end
augroup misc
  autocmd!
  autocmd Filetype vim setlocal ts=2 sts=2 sw=2 colorcolumn
  autocmd FileType lua,hocon setlocal ts=2 sts=2 sw=2
  autocmd Filetype go setlocal ts=4 sts=4 sw=4
  autocmd Filetype conf setlocal colorcolumn=88
  autocmd Filetype smarty setlocal ts=2 sts=2 sw=2
  autocmd BufRead,BufNewFile *.template set syntax=nginx
  autocmd BufRead,BufNewFile *.conf.template setlocal ts=4 sts=4 sw=2
augroup end

