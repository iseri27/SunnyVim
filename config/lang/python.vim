function config#lang#python#run() abort
	execute "w"
	call utils#open_buffer_below()
	terminal python %
endfunction

call utils#AddKeyForLang('python', ['nnore', 'vnore'], ['l'], ':call config#lang#python#run() <CR>', 'Run this file')
