" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================
function! color#add(repo, colorscheme) abort
	if !exists('g:colorscheme_list')
		let g:colorscheme_list = []
	endif

	if index(g:colorscheme_list, a:colorscheme) < 0
		call dein#add(a:repo)
		call add(g:colorscheme_list, a:colorscheme)
	endif
	
endfunction

function! color#set(colorscheme, bg) abort
	if index(g:colorscheme_list, a:colorscheme) < 0
		echoerr "Colorscheme " .. a:colorscheme .. " Uninstalled"
		return
	endif

	if index(['light', 'dark'], a:bg) < 0
		echoerr "Invalid Background " .. a:bg
		return
	endif

	execute 'colorscheme ' .. a:colorscheme
	let &background = a:bg
	let g:lightline.colorscheme = a:colorscheme
endfunction
