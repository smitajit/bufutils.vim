function! WipeOut()
	pclose
	lclose
	helpclose
	if g:NERDTree.IsOpen()
		NERDTreeToggle
	endif
endfun
