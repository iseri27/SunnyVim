" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

" SH:
function! config#lang#sh#Run() abort
	execute 'w'
	call config#core#open_buffer_below()
	terminal bash ./%
endfunction
call utils#AddKeyForLang('sh', ['nnore'], ['l'], ':call config#lang#sh#Run() <CR>', 'Run this File')

