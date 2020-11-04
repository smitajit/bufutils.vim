
fun! bufutils#other#Refresh()
	try
		edit
		echon " buffer refreshed"
	catch
		echon " failed to refresh buffer"
	endtry
endfun


fun! bufutils#other#FilePath(...)
	if a:0 >= 1 && a:1 == "true"
		echo @%
	else
		echo expand('%:p')
	endif
endfun
