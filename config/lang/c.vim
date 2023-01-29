function! config#lang#c#Compile() abort
	execute "w"
	call config#core#open_buffer_below()
	terminal gcc % -std=c11 -g -DDEBUG -Wall -lm -o %<.exe
endfunction

function! config#lang#c#Run() abort
	execute "w"
	call config#core#open_buffer_below()
	terminal ./%<.exe
endfunction

function! config#lang#c#Clean() abort
	execute "!rm ./%<.exe"
endfunction

call utils#AddKeyForLang('c', ['n'], ['l'], ':call config#lang#c#Compile() <CR>', 'Compile this file')
call utils#AddKeyForLang('c', ['n'], ['r'], ':call config#lang#c#Run() <CR>'    , 'Run this file')
call utils#AddKeyForLang('c', ['n'], ['c'], ':call config#lang#c#Clean() <CR>'  , 'Clean')
call utils#AddKeyForLang('c', ['n'], ['m'], ':call config#lang#makefile#Make() <CR>', 'Make')
