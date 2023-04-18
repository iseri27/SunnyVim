function! config#lang#makefile#Make() abort
	call utils#open_buffer_below()
	terminal make
endfunction
