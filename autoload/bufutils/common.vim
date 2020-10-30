let s:nbs = nr2char(0x2007)
let s:prompt = 'Bufutils Commands> '

fun! bufutils#common#list_commands(...) abort
  let commands = deepcopy(g:bufutils#commands)
  return join(map(commands , {pos,val -> val.command}) , "\n")
endfun

fun! bufutils#common#list_raw_commands(...) abort
  let l:commands = deepcopy(g:bufutils#commands)
  let raw_commands = ["Command                  Scope                  Target                  Arguments"]
  for entry in l:commands
    let raw_commands +=[printf("%6s %3s %10s %6s", entry.command, entry.scope, entry.target , entry.options)]
  endfor
  return raw_commands
endfun

fun! bufutils#common#register_commands() abort
    for entry in g:bufutils#commands
        let cmd = join(["command!" , entry.options, entry.command , "call", entry.target], " ")
        execute cmd
    endfor
endfun

fun! bufutils#common#exec_command(...) abort
  if a:0 >= 1
    let l:cmd = join(a:000, " ")
    exec "".l:cmd
  else
    echon "not implemented yet"
  endif
endfun



