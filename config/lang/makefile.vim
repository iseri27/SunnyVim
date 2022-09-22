function! config#lang#makefile#Make() abort
	call config#core#open_buffer_below()
	terminal make
endfunction
