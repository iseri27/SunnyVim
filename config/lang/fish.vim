" SH:
function! config#lang#fish#Run() abort
	execute 'w'
	call utils#open_buffer_below()
	terminal fish ./%
endfunction

call utils#AddKeyForLang('fish', ['nnore'], ['l'], ':call config#lang#fish#Run() <CR>', 'Run this File')
