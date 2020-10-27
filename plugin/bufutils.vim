fun! bufutils#BRefresh()
	try
		edit
		echon " buffer refreshed"
	catch
		echon " failed to refresh buffer"
	endtry

endfun

fun! bufutils#BOpen(file_name)
	execute "edit ".a:file_name
endfun

fun! bufutils#BOpenSVertical(file_name)
	execute "vsplit ".a:file_name
endfun

fun! bufutils#BOpenSHorizontal(file_name)
	execute "split ".a:file_name
endfun


fun!  bufutils#BClosePreviews()
	pclose
	lclose
	helpclose
	"if exists('g:NERDTree') && g:NERDTree.IsOpen()
		"NERDTreeToggle
	"endif
endfun

fun! bufutils#BCloseThis()
	let s:cur_buf_n = bufnr("%")
	let s:res = bufutils#closebuffer(s:cur_buf_n)
	if s:res == "true"
		echon " closed this buffer"
	else
		echon  " failed to close this buffer"
	endif
endfun

fun! bufutils#BCloseAll()
	let s:count = 0
	let s:buf_n = bufnr("$")
	while s:buf_n > 0
			let s:res = bufutils#closebuffer(s:buf_n)
			if s:res == "true"
				let s:count = s:count + 1
			endif
		let s:buf_n = s:buf_n - 1
	endwhile
	echon " Closed " s:count " buffers"
endfun

fun! bufutils#BCloseLeft()
	let s:count = 0
	let s:buf_n = bufnr("$")
	let s:cur_buf_n = bufnr("%")
	while s:buf_n > 0
			if s:buf_n < s:cur_buf_n
				let s:res = bufutils#closebuffer(s:buf_n)
				if s:res == "true"
					let s:count = s:count + 1
				endif
			endif
		let s:buf_n = s:buf_n - 1
	endwhile
	echon " Closed " s:count " buffers"
endfun

fun! bufutils#BCloseRight()
	let s:count = 0
	let s:buf_n = bufnr("$")
	let s:cur_buf_n = bufnr("%")
	while s:buf_n > 0
			if s:buf_n > s:cur_buf_n
				let s:res = bufutils#closebuffer(s:buf_n)
				if s:res == "true"
					let s:count = s:count + 1
				endif
			endif
		let s:buf_n = s:buf_n - 1
	endwhile
	echon " Closed " s:count " buffers"
endfun

fun! bufutils#BCloseOther()
	let s:cur_buf_n = bufnr("%")
	let s:count = 0
	let s:buf_n = bufnr("$")
	while s:buf_n > 0
		if s:buf_n != s:cur_buf_n
			let s:res = bufutils#closebuffer(s:buf_n)
			if s:res == "true"
				let s:count = s:count + 1
			endif
		endif
		let s:buf_n = s:buf_n - 1
	endwhile
	echon " closed " s:count " buffers"
endfun


fun! bufutils#closebuffer(buf_n)
	if getbufvar(a:buf_n , '&modified') == 0
		try
			execute "bd ".a:buf_n
			return "true"
		catch
		endtry
	endif
	return "false"
endfun
