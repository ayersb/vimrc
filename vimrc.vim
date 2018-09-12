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
        terminal babel-node $(realpath %)
endfunction

set expandtab
" Language specific settings

augroup javascript
        autocmd!
        autocmd Filetype javascript :setlocal ts=2 sts=2 sw=2
        autocmd Filetype javascript :setlocal colorcolumn=120
        autocmd Filetype javascript :noremap <buffer> <F8> aconsole.log(JSON.stringify(%, null, 1));<ESC>F%s
        autocmd Filetype javascript :noremap <buffer> <F7> :call SwapRoot()<CR>
        autocmd Filetype javascript :noremap <buffer> <F4> :call RunJsFile()<CR>
        autocmd BufWritePre *.js :%s/^\(import.*from.*\)\$P\(.*\)$/\1\~\2/e
augroup end

augroup misc
        autocmd!
        autocmd Filetype sql :setlocal ts=2 sts=2 sw=2
        autocmd Filetype go :setlocal ts=4 sts=4 sw=4
        autocmd Filetype sh,bash :setlocal ts=4 sts=4 sw=4
        autocmd Filetype python :setlocal colorcolumn=80
        " Automatically enable spell check for commit messages
        autocmd BufNewFile,BufRead COMMIT_EDITMSG setlocal spell spelllang=en_us
        " For oracle SQLcli
        autocmd BufRead,BufNewFile afiedt.buf :set syntax=sql
        " For neomutt
        autocmd BufRead neomutt-* set tw=72
augroup end

" Run last
highlight Search guifg=peachpuff1 guibg=darkseagreen4
highlight MatchParen guifg=aquamarine3 guibg=bisque4 gui=bold

