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
	if &ft == 'tex'
		execute ':VimtexTocToggle'
	elseif &ft == 'vim' || &ft == 'vue' || &ft == 'python' || &ft == 'c' || &ft == 'cpp' || &ft == 'lua'
		execute ':Vista!!'
	elseif &ft == 'vista'
		execute ':Vista!'
	else
		execute ':TagbarToggle'
	endif
endfunction
