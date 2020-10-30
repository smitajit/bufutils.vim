let g:bufutils#open#use_fzf = 1

fun! bufutils#open#New(...)
    if a:0 >=1
		for f in a:000
	    	execute "edit ".f
		endfor
    else
	    execute "edit"
    endif
endfun

fun! bufutils#open#SplitVertical(...)
    if a:0 >=1
		for f in a:000
	    	execute "vsplit ".f
		endfor
    else
	    execute "vsplit"
    endif
endfun

fun! bufutils#open#SplitHorizontal(...)
    if a:0 >=1
		for f in a:000
	    	execute "split ".f
		endfor
    else
	    execute "split"
    endif
endfun
