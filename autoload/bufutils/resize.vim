let g:bufutils#resize#default#width = 5
let g:bufutils#resize#default#height = 5

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

fun! bufutils#resize#FullWidth()
		exec "vertical resize |"
endfun

fun! bufutils#resize#FullHeight()
		exec "resize |"
endfun

fun! bufutils#resize#Reset()
		wincmd =
endfun

function! bufutils#resize#ToggleZoom(zoom)
  if exists("t:restore_zoom") && (a:zoom == v:true || t:restore_zoom.win != winnr())
      exec t:restore_zoom.cmd
      unlet t:restore_zoom
  elseif a:zoom
      let t:restore_zoom = { 'win': winnr(), 'cmd': winrestcmd() }
      exec "normal \<C-W>\|\<C-W>_"
  endif
endfunction

augroup bufutils#restorezoom
    au WinEnter * silent! :call bufutils#resize#ToggleZoom(v:false)
augroup END

