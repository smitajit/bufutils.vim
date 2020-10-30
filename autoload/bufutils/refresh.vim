fun! bufutils#refresh#Buffer()
	try
		edit
		echon " buffer refreshed"
	catch
		echon " failed to refresh buffer"
	endtry
endfun
