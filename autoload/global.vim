function! global#Toggle_wrap() abort
	if &wrap == 0
		setlocal wrap
		echo "Set wrap"
	else
		setlocal nowrap
		echo "Set nowrap"
	endif
endfunction
