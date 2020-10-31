let g:bufutils#fzf#with_preview = get(g:, 'bufutils#fzf#with_preview', 1)

fun! s:get_git_root()
  let root = split(system('git rev-parse --show-toplevel'), '\n')[0]
  return v:shell_error ? '' : root
endfun

fun! bufutils#fzf#files(split)
    let opts = { 'source': s:get_source(),
                \'sink' : s:function(s:get_sink(a:split)),
                \'options': '-m --prompt "Bufutils Files> "'
             \}
    if g:bufutils#fzf#with_preview == 1
        call fzf#run(fzf#wrap(fzf#vim#with_preview(opts)))
    else
        call fzf#run(fzf#wrap(opts))
    endif
endfun

fun! s:get_source()
    let root = s:get_git_root()
    return empty(root) ? 'find -type f -follow -print' : 'git ls-files | uniq'
endfun

fun! s:get_sink(split)
    if a:split == 'V'
        return 'bufutils#open#SplitVertical'
    elseif a:split == 'H'
        return 'bufutils#open#SplitHorizontal'
    else
        return 'bufutils#open#New'
    endif
endfun

if v:version >= 704
  function! s:function(name)
    return function(a:name)
  endfunction
else
  function! s:function(name)
    return function(substitute(a:name, '^s:', matchstr(expand('<sfile>'), '<SNR>\d\+_\zefunction$'), ''))
  endfunction
endif
