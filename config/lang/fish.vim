" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

" SH:
function! config#lang#fish#Run() abort
	execute 'w'
	call config#core#open_buffer_below()
	terminal fish ./%
endfunction

call utils#AddKeyForLang('fish', ['nnore'], ['l'], ':call config#lang#fish#Run() <CR>', 'Run this File')
