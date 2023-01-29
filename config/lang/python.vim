function config#lang#python#run() abort
	execute "w"
	call config#core#open_buffer_below()
	terminal python %
endfunction

call utils#AddKeyForLang('python', ['nnore', 'vnore'], ['l'], ':call config#lang#python#run() <CR>', 'Run this file')
