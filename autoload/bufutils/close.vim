fun! bufutils#close#Previews()
	pclose
	lclose
	helpclose
endfun

fun! bufutils#close#This()
	let l:cur_buf_n = bufnr("%")
	let l:res = bufutils#close#buffer(l:cur_buf_n)
	if l:res == "true"
		echon " closed this buffer"
	else
		echon  " failed to close this buffer"
	endif
endfun

fun! bufutils#close#All()
	let l:count = 0
	let l:buf_n = bufnr("$")
	while l:buf_n > 0
			let l:res = bufutils#close#buffer(l:buf_n)
			if l:res == "true"
				let l:count = l:count + 1
			endif
		let l:buf_n = l:buf_n - 1
	endwhile
	echon " Closed " l:count " buffers"
endfun

fun! bufutils#close#Left()
	let l:count = 0
	let l:buf_n = bufnr("$")
	let l:cur_buf_n = bufnr("%")

	while l:buf_n > 0
			if l:buf_n < l:cur_buf_n
				let l:res = bufutils#close#buffer(l:buf_n)
				if l:res == "true"
					let l:count = l:count + 1
				endif
			endif
		let l:buf_n = l:buf_n - 1
	endwhile
	echon " Closed " l:count " buffers"
endfun

fun! bufutils#close#Right()
	let l:count = 0
	let l:buf_n = bufnr("$")
	let l:cur_buf_n = bufnr("%")
	while l:buf_n > 0
			if l:buf_n > l:cur_buf_n
				let l:res = bufutils#close#buffer(l:buf_n)
				if l:res == "true"
					let l:count = l:count + 1
				endif
			endif
		let l:buf_n = l:buf_n - 1
	endwhile
	echon " Closed " l:count " buffers"
endfun

fun! bufutils#close#Other()
	let l:cur_buf_n = bufnr("%")
	let l:count = 0
	let l:buf_n = bufnr("$")
	while l:buf_n > 0
		if l:buf_n != l:cur_buf_n
			let l:res = bufutils#close#buffer(l:buf_n)
			if l:res == "true"
				let l:count = l:count + 1
			endif
		endif
		let l:buf_n = l:buf_n - 1
	endwhile
	echon " closed " l:count " buffers"
endfun


func! bufutils#close#RetainPrevious()
	execute "bp|sp|bn|bd"
endfun

func! bufutils#close#Hide()
	execute "hide"
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
