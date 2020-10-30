let g:bufutils#open#use_fzf = 0

fun! bufutils#open#New(...)
    if a:0 >=1
		for f in a:000
	    	execute "edit ".f
		endfor
    else
		if g:bufutils#open#use_fzf == 1
			call bufutils#fzf#files("")
		else
			execute "edit"
		endif
    endif
endfun

fun! bufutils#open#SplitVertical(...)
    if a:0 >=1
		for f in a:000
	    	execute "vsplit ".f
		endfor
    else
		if g:bufutils#open#use_fzf == 1
			call bufutils#fzf#files("V")
		else
			execute "vsplit"
		endif
    endif
endfun

fun! bufutils#open#SplitHorizontal(...)
    if a:0 >=1
		for f in a:000
	    	execute "split ".f
		endfor
    else
	    if g:bufutils#open#use_fzf == 1
			call bufutils#fzf#files("H")
		else
			execute "split"
		endif
    endif
endfun
