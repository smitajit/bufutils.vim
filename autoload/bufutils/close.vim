fun! bufutils#close#Previews()
	pclose
	lclose
	helpclose
endfun

fun! bufutils#close#This()
	let s:cur_buf_n = bufnr("%")
	let s:res = bufutils#close#buffer(s:cur_buf_n)
	if s:res == "true"
		echon " closed this buffer"
	else
		echon  " failed to close this buffer"
	endif
endfun

fun! bufutils#close#All()
	let s:count = 0
	let s:buf_n = bufnr("$")
	while s:buf_n > 0
			let s:res = bufutils#close#buffer(s:buf_n)
			if s:res == "true"
				let s:count = s:count + 1
			endif
		let s:buf_n = s:buf_n - 1
	endwhile
	echon " Closed " s:count " buffers"
endfun

fun! bufutils#close#Left()
	let s:count = 0
	let s:buf_n = bufnr("$")
	let s:cur_buf_n = bufnr("%")

	while s:buf_n > 0
			if s:buf_n < s:cur_buf_n
				let s:res = bufutils#close#buffer(s:buf_n)
				if s:res == "true"
					let s:count = s:count + 1
				endif
			endif
		let s:buf_n = s:buf_n - 1
	endwhile
	echon " Closed " s:count " buffers"
endfun

fun! bufutils#close#Right()
	let s:count = 0
	let s:buf_n = bufnr("$")
	let s:cur_buf_n = bufnr("%")
	while s:buf_n > 0
			if s:buf_n > s:cur_buf_n
				let s:res = bufutils#close#buffer(s:buf_n)
				if s:res == "true"
					let s:count = s:count + 1
				endif
			endif
		let s:buf_n = s:buf_n - 1
	endwhile
	echon " Closed " s:count " buffers"
endfun

fun! bufutils#close#Other()
	let s:cur_buf_n = bufnr("%")
	let s:count = 0
	let s:buf_n = bufnr("$")
	while s:buf_n > 0
		if s:buf_n != s:cur_buf_n
			let s:res = bufutils#close#buffer(s:buf_n)
			if s:res == "true"
				let s:count = s:count + 1
			endif
		endif
		let s:buf_n = s:buf_n - 1
	endwhile
	echon " closed " s:count " buffers"
endfun


fun! bufutils#close#buffer(buf_n)
	if getbufvar(a:buf_n , '&modified') == 0
		try
			execute "bd ".a:buf_n
			return "true"
		catch
		endtry
	endif
	return "false"
endfun
