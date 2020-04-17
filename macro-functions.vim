" Autocommands

function! InsertConsoleLogJs()
  if strlen(getline('.')) > 0
      execute "normal! $a\<CR>"
    endif
    execute 'normal! ccconsole.log(JSON.stringify(%, null, 1))'
    execute 'normal! F%s'
  endfunction


function! OpenInIntelijFn()
    call jobstart("intelij ". expand("%:p") . ":" . line("."))
  endfunction
command OpenInIntelij :call OpenInIntelijFn()
