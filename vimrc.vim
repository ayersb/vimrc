" VIMRC Main File
" VIMRC FILE
source  $GLOBAL_SETTINGS_DIR/vimrc-files/plugin-setup.vim
source $GLOBAL_SETTINGS_DIR/vimrc-files/settings.vim
source $GLOBAL_SETTINGS_DIR/vimrc-files/shortcuts.vim

set viminfo+=n~/.vim/viminfo
function! SwapRoot()
        let startcol = col(".")
        let startline = line(".")
        if (getline(".") =~ ".*\'\\~.*")
                s/'\~/'$P/
                "normal! $F/
        elseif ((getline(".") =~ ".*\'\\$P.*"))
                s/'\$P/'\~/
                "normal! $F/
                call cursor(startline, startcol-1)
        else
                echo "No Match"
        endif
endfunction

:set expandtab
" Language specific settings
autocmd Filetype javascript :setlocal ts=2 sts=2 sw=2
autocmd Filetype sql :setlocal ts=2 sts=2 sw=2
autocmd Filetype go :setlocal ts=4 sts=4 sw=4
autocmd Filetype sh,bash :setlocal ts=4 sts=4 sw=4

autocmd Filetype python :setlocal colorcolumn=80
autocmd Filetype javascript :setlocal colorcolumn=120

autocmd Filetype javascript :noremap <buffer> <F8> isetTimeout(() => console.log(), 1000)<ESC>F,hi
autocmd Filetype javascript :noremap <buffer> <F7> :call SwapRoot()<CR>
autocmd BufWritePre *.js :Prettier<CR>
autocmd BufWritePre *.js :%s/^\(import.*from.*\)\$P\(.*\)$/\1\~\2/e

autocmd Filetype javascript :noremap <buffer> <leader>ff :w<CR>:Fixmyjs<CR>:w<CR>:Prettier<CR>:w<CR>
autocmd Filetype python :noremap <buffer> <leader>ff :Autoformat<CR>

" For oracle SQLcli
autocmd BufRead,BufNewFile afiedt.buf :set syntax=sql

" enhance YCM JS completion with tern's smarts
autocmd FileType javascript setlocal omnifunc=tern#Complete

" autocmd FileType *.txt set completefunc=emoji#complete

" autocmd BufRead,BufNewFile *.md setlocal wrap
" autocmd BufRead,BufNewFile *.text setlocal textwidth=80

" Run last
:hi Search guifg=peachpuff1 guibg=darkseagreen4
:highlight MatchParen guifg=aquamarine3 guibg=bisque4 gui=bold
