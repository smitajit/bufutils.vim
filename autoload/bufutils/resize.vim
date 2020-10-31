let g:bufutils#resize#default#width = get(g:, 'bufutils#resize#default#width', 5)
let g:bufutils#resize#default#height = get(g:, 'bufutils#resize#default#height', 5)
let g:bufutils#resize#auto#reset = get(g:, 'bufutils#resize#auto#reset', 1)

fun! bufutils#resize#IncreaseHeight(...)
	if a:0 >= 1
		exec "resize +".a:1
	else
		exec "resize +".g:bufutils#resize#default#height
	endif
endfun

fun! bufutils#resize#DecreaseHeight(...)
	if a:0 >= 1
		exec "resize -".a:1
	else
		exec "resize -".g:bufutils#resize#default#height
	endif
endfun

fun! bufutils#resize#IncreaseWidth(...)
	if a:0 >= 1
		exec "vertical resize +".a:1
	else
		exec "vertical resize +".g:bufutils#resize#default#width
	endif
endfun

fun! bufutils#resize#DecreaseWidth(...)
	if a:0 >= 1
		exec "vertical resize -".a:1
	else
		exec "vertical resize -".g:bufutils#resize#default#width
	endif
endfun

fun! bufutils#resize#FullWidth(flag)
  if exists("t:resize_full_width") && (a:flag == v:true || t:resize_full_width.win != winnr())
      exec t:resize_full_width.cmd
      unlet t:resize_full_width
  elseif a:flag
      let t:resize_full_width = { 'win': winnr(), 'cmd': winrestcmd() }
	  exec "vertical resize |"
  endif
endfun

fun! bufutils#resize#FullHeight(flag)
  if exists("t:resize_full_height") && (a:flag == v:true || t:resize_full_height.win != winnr())
      exec t:resize_full_height.cmd
      unlet t:resize_full_height
  elseif a:flag
      let t:resize_full_height = { 'win': winnr(), 'cmd': winrestcmd() }
	  exec "resize |"
  endif
endfun

fun! bufutils#resize#Reset()
    call bufutils#resize#Zoom(v:false)
    call bufutils#resize#FullHeight(v:false)
    call bufutils#resize#FullWidth(v:false)
	wincmd =
endfun

function! bufutils#resize#Zoom(zoom)
  if exists("t:restore_zoom") && (a:zoom == v:true || t:restore_zoom.win != winnr())
      exec t:restore_zoom.cmd
      unlet t:restore_zoom
  elseif a:zoom
      let t:restore_zoom = { 'win': winnr(), 'cmd': winrestcmd() }
      exec "normal \<C-W>\|\<C-W>_"
  endif
endfunction

augroup bufutils#resize#restore
	if g:bufutils#resize#auto#reset == 1
		au WinEnter * silent! :call bufutils#resize#Zoom(v:false)
		au WinEnter * silent! :call bufutils#resize#FullHeight(v:false)
		au WinEnter * silent! :call bufutils#resize#FullWidth(v:false)
	endif
augroup END

