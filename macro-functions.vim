" Autocommands

function! InsertConsoleLogJs()
  if strlen(getline('.')) > 0
      execute "normal! $a\<CR>"
    endif
    execute 'normal! ccconsole.log(JSON.stringify(%, null, 1))'
    execute 'normal! F%s'
  endfunction


function! OpenInIntelijFn()
    call jobstart("open -na \"IntelliJ IDEA.app\" --args --line ". line(".") . " ". expand("%:p"))
  endfunction

function! JsonToPythonClass()
  execute 's/^\(\s*\)"\(\a\+\)".*/\1self.\2 = kwargs.get("\2")'
endfunction
