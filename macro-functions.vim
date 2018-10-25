" Autocommands
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

