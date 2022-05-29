" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

function! global#Toggle_wrap() abort
	if &wrap == 0
		setlocal wrap
		echo "Set wrap"
	else
		setlocal nowrap
		echo "Set nowrap"
	endif
endfunction

function! global#ToggleTagbar() abort
	echo "Latex File"
	if &ft == 'tex'
		execute ':VimtexTocToggle'
	else
		execute ':TagbarToggle'
	endif
endfunction
